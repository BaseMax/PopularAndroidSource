.class public Lcab/snapp/passenger/units/second_destination/b;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/second_destination/f;",
        "Lcab/snapp/passenger/units/second_destination/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final FIXER_ANCHOR_X:F = 0.5f

.field public static final FIXER_ANCHOR_Y:F = 1.0f

.field public static final SEARCH_REQUEST_CODE:I = 0x53e


# instance fields
.field final a:I

.field b:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private h:I

.field private i:Lcom/google/android/gms/maps/model/LatLng;

.field private j:Lio/reactivex/b/c;

.field private k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

.field private l:Z

.field private m:Lcab/snapp/passenger/data/models/FavoriteModel;

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/16 v0, 0x544

    .line 75
    iput v0, p0, Lcab/snapp/passenger/units/second_destination/b;->a:I

    const v0, 0x7f0a0459

    .line 83
    iput v0, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/b;->l:Z

    .line 107
    iput-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/b;->n:Z

    return-void
.end method

.method private synthetic a()V
    .locals 5

    .line 298
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, -0x28

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5a

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    .line 304
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v2, Lcab/snapp/mapmodule/a/a/q;

    iget v3, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    const/4 v4, 0x0

    neg-float v0, v0

    invoke-direct {v2, v3, v4, v0}, Lcab/snapp/mapmodule/a/a/q;-><init>(IFF)V

    invoke-virtual {v1, v2}, Lcab/snapp/mapmodule/a;->scrollMap(Lcab/snapp/mapmodule/a/a/q;)V

    return-void
.end method

.method private synthetic a(Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    instance-of v0, p1, Lcab/snapp/passenger/data/models/NullLocation;

    if-eqz v0, :cond_3

    .line 380
    check-cast p1, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/second_destination/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isBecauseDenyPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationModeBatterySavingOrPhoneOnly()Z

    move-result p1

    if-nez p1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/second_destination/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isPermanentlyDeniedPermission()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 387
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/d;->onPermissionRequestIsDenied()V

    .line 3310
    :cond_2
    :goto_0
    :try_start_0
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "location"

    const-string v1, "show"

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 3311
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Popup"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3314
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 392
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v7, Lcab/snapp/mapmodule/a/a/n;

    iget v2, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    .line 393
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcab/snapp/mapmodule/a/a/n;-><init>(IDD)V

    .line 392
    invoke-virtual {v0, v7}, Lcab/snapp/mapmodule/a;->moveAnimated(Lcab/snapp/mapmodule/a/a/n;)V

    .line 395
    iget-boolean p1, p0, Lcab/snapp/passenger/units/second_destination/b;->n:Z

    if-nez p1, :cond_5

    .line 396
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/g;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 397
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    iget v0, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    invoke-virtual {p1, v0}, Lcab/snapp/mapmodule/a;->showUserLocationIndicator(I)V

    :cond_4
    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lcab/snapp/passenger/units/second_destination/b;->n:Z

    :cond_5
    return-void
.end method

.method private a(Lcab/snapp/mapmodule/a/b/c;)V
    .locals 13

    .line 206
    iget v0, p1, Lcab/snapp/mapmodule/a/b/c;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_c

    const/16 p1, 0x7dc

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7d2

    if-eq v0, p1, :cond_3

    const/16 p1, 0x7d3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/d;->onMapMoveFinished()V

    .line 227
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->i:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_1

    .line 228
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->i:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;-><init>(DD)V

    .line 229
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->setFormattedAddress()V

    .line 230
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getPin(Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$Off2-3m0bOEeNzWxVqcIwMVt5bY;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$Off2-3m0bOEeNzWxVqcIwMVt5bY;-><init>(Lcab/snapp/passenger/units/second_destination/b;)V

    sget-object v2, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$f0O6oVwlc_c4ePxxbCEsudr5ug4;->INSTANCE:Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$f0O6oVwlc_c4ePxxbCEsudr5ug4;

    invoke-virtual {p1, v0, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/second_destination/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 247
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 248
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setSecondDestinationFormattedAddress(Ljava/lang/String;)V

    .line 250
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v2

    iget-object v4, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 251
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 252
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/f;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/f;->navigateUp()V

    return-void

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 221
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/d;->onMapMoveStarted()V

    return-void

    .line 208
    :cond_4
    iget-boolean p1, p0, Lcab/snapp/passenger/units/second_destination/b;->o:Z

    const/4 v0, 0x1

    if-nez p1, :cond_8

    .line 209
    iput-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/b;->o:Z

    .line 1138
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->d:Lcab/snapp/passenger/c/h;

    .line 1139
    invoke-virtual {p1}, Lcab/snapp/passenger/c/h;->getSearchResults()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 1140
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 1142
    iget-object v2, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    const/16 v2, 0x53e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 1146
    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-eqz p1, :cond_6

    .line 1147
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    new-instance v9, Lcab/snapp/mapmodule/a/a/f;

    iget v3, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    iget-object v2, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 1150
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLatitude()D

    move-result-wide v4

    iget-object v2, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 1151
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLongitude()D

    move-result-wide v6

    const/high16 v8, 0x41700000    # 15.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    .line 1147
    invoke-virtual {p1, v9}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    .line 1155
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->p:Ljava/lang/String;

    .line 1156
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_8

    .line 1268
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 1269
    iget-object v1, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/e;->getSavedLocation()Landroid/location/Location;

    move-result-object v1

    if-nez p1, :cond_7

    .line 1273
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1278
    :cond_7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$O-Y0_ICuZLhN2pwECTTaFZG3EuI;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$O-Y0_ICuZLhN2pwECTTaFZG3EuI;-><init>(Lcab/snapp/passenger/units/second_destination/b;Lcom/google/android/gms/maps/model/LatLng;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1287
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$perfxI2LG3xtVq_YLBSM1rcX8ns;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$perfxI2LG3xtVq_YLBSM1rcX8ns;-><init>(Lcab/snapp/passenger/units/second_destination/b;)V

    const-wide/16 v2, 0x4e2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_8
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result p1

    if-ne p1, v0, :cond_9

    .line 215
    iget p1, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    invoke-static {p1}, Lcab/snapp/passenger/f/j;->updateTrafficState(I)V

    .line 2167
    :cond_9
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 2168
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz p1, :cond_a

    .line 2171
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v12, Lcab/snapp/mapmodule/a/a/a;

    iget v4, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const v9, 0x7f08012b

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const-string v3, "ORIGIN_MARKER_TAG"

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    invoke-virtual {v1, v12}, Lcab/snapp/mapmodule/a;->addOriginMarker(Lcab/snapp/mapmodule/a/a/a;)V

    :cond_a
    if-eqz v0, :cond_b

    .line 2185
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    new-instance v11, Lcab/snapp/mapmodule/a/a/a;

    iget v3, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const v8, 0x7f0800e0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v2, "DESTINATION_MARKER_TAG"

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    invoke-virtual {p1, v11}, Lcab/snapp/mapmodule/a;->addDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V

    :cond_b
    return-void

    .line 256
    :cond_c
    instance-of v0, p1, Lcab/snapp/mapmodule/a/b/a;

    if-eqz v0, :cond_d

    .line 257
    check-cast p1, Lcab/snapp/mapmodule/a/b/a;

    .line 258
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/b/a;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/b/a;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->i:Lcom/google/android/gms/maps/model/LatLng;

    :cond_d
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

    .line 234
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getSnappFormattedAddress()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/second_destination/d;->onAddressUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 9

    .line 278
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v8, Lcab/snapp/mapmodule/a/a/f;

    iget v2, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/high16 v7, 0x41700000    # 15.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    invoke-virtual {v0, v8}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

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

.method private synthetic b()V
    .locals 4

    .line 4295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$IPebmf1h8tUdYt6EfOdmt61MedQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$IPebmf1h8tUdYt6EfOdmt61MedQ;-><init>(Lcab/snapp/passenger/units/second_destination/b;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic b(Lcab/snapp/mapmodule/a/b/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    iget p1, p1, Lcab/snapp/mapmodule/a/b/c;->id:I

    iget v0, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$AVgJFqdmUcirnWQUKMK-Hg2nmZM(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/mapmodule/a/b/c;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/b;->b(Lcab/snapp/mapmodule/a/b/c;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$EQN8ybh7fGQbReJrLF26oyiWiq4(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/mapmodule/a/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/b;->a(Lcab/snapp/mapmodule/a/b/c;)V

    return-void
.end method

.method public static synthetic lambda$IPebmf1h8tUdYt6EfOdmt61MedQ(Lcab/snapp/passenger/units/second_destination/b;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/second_destination/b;->a()V

    return-void
.end method

.method public static synthetic lambda$O-Y0_ICuZLhN2pwECTTaFZG3EuI(Lcab/snapp/passenger/units/second_destination/b;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/b;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public static synthetic lambda$Off2-3m0bOEeNzWxVqcIwMVt5bY(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V

    return-void
.end method

.method public static synthetic lambda$f0O6oVwlc_c4ePxxbCEsudr5ug4(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/second_destination/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$perfxI2LG3xtVq_YLBSM1rcX8ns(Lcab/snapp/passenger/units/second_destination/b;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/second_destination/b;->b()V

    return-void
.end method

.method public static synthetic lambda$r33DEpyJ_StZxBAPFn-EFiVYqTc(Lcab/snapp/passenger/units/second_destination/b;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/second_destination/b;->a(Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public favoriteSelected(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/b;->m:Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 487
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v7, Lcab/snapp/mapmodule/a/a/n;

    iget v2, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    .line 488
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v3

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcab/snapp/mapmodule/a/a/n;-><init>(IDD)V

    .line 487
    invoke-virtual {v0, v7}, Lcab/snapp/mapmodule/a;->moveAnimated(Lcab/snapp/mapmodule/a/a/n;)V

    :cond_0
    return-void
.end method

.method public getSnappRideDataManager()Lcab/snapp/passenger/c/g;
    .locals 1

    .line 508
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    return-object v0
.end method

.method public handleBack()V
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/f;->navigateUp()V

    :cond_0
    return-void
.end method

.method public navigateToAddFavoriteAddress()V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/f;->routeToAddFavoriteAddress()V

    :cond_0
    return-void
.end method

.method public navigateToSearch()V
    .locals 5

    .line 436
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->k:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x53e

    const-string v2, "Key Search Request Code"

    .line 441
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/second_destination/f;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/second_destination/f;->routeToSearchUnit(Landroid/os/Bundle;)V

    .line 2452
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "searchButton[tap]"

    const-string v3, "rideOption"

    if-ne v0, v1, :cond_1

    .line 2453
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2454
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 2455
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2457
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2458
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const-string v4, "In-ride"

    if-ne v0, v1, :cond_2

    .line 2459
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2460
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 2461
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2463
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2464
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2465
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2466
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 2467
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2469
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2470
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 2471
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2472
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 2473
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2475
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_4
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 515
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 516
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/second_destination/b;)V

    .line 521
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/second_destination/f;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/second_destination/f;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 529
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/d;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/second_destination/d;->onInitialize(Z)V

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/second_destination/d;->onInitialize(Z)V

    .line 540
    :cond_3
    :goto_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$AVgJFqdmUcirnWQUKMK-Hg2nmZM;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$AVgJFqdmUcirnWQUKMK-Hg2nmZM;-><init>(Lcab/snapp/passenger/units/second_destination/b;)V

    .line 542
    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Lio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$EQN8ybh7fGQbReJrLF26oyiWiq4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$EQN8ybh7fGQbReJrLF26oyiWiq4;-><init>(Lcab/snapp/passenger/units/second_destination/b;)V

    .line 543
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 539
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/second_destination/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 546
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/c/e;->refreshLocation(Z)V

    .line 548
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->g:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitPause()V
    .locals 2

    .line 554
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 555
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    iget v1, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->hideUserLocationIndicator(I)V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 560
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 561
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    iget v1, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->showUserLocationIndicator(I)V

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/b;->o:Z

    return-void
.end method

.method public reportOnMyLocationClickedToAppMetrica()V
    .locals 5

    .line 567
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "secondDestination[tapLocationPin]"

    const-string v2, "rideOption"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 569
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 570
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 571
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 573
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    :cond_0
    const/4 v3, 0x4

    const-string v4, "In-ride"

    if-ne v0, v3, :cond_1

    .line 575
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 576
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 577
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 579
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 581
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 582
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 583
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 585
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    :cond_2
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 587
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 588
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 589
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 591
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method public reportPopUpLocationNegativeButtonClickedToAppMetrica()V
    .locals 3

    .line 604
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "location"

    const-string v2, "no"

    .line 605
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 607
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Popup"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public reportPopUpLocationPositiveButtonToAppMetrica()V
    .locals 3

    .line 597
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "location"

    const-string v2, "yes"

    .line 598
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 600
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

    .line 420
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    const/16 v1, 0x544

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/c/e;->requestEditLocationSetting(Lcom/google/android/gms/common/api/k;I)V

    return-void
.end method

.method public secondDestinationSelected()V
    .locals 8

    .line 325
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->i:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_3

    .line 326
    iget-object v1, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 327
    iget-object v2, p0, Lcab/snapp/passenger/units/second_destination/b;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v3, p0, Lcab/snapp/passenger/units/second_destination/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->i:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->i:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v2 .. v7}, Lcab/snapp/passenger/f/p;->requestLogSecondDestination(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V

    .line 328
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/f;->navigateUp()V

    .line 2338
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "secondDestination[pinFixed]"

    const-string v3, "rideOption"

    if-ne v0, v1, :cond_0

    .line 2339
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2340
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 2341
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2343
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2344
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const-string v4, "In-ride"

    if-ne v0, v1, :cond_1

    .line 2345
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2346
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 2347
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2349
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2350
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2351
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2352
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 2353
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2355
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2356
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 2357
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2358
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 2359
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2361
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method public showMyLocation()V
    .locals 9

    .line 369
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v8, Lcab/snapp/mapmodule/a/a/n;

    iget v3, p0, Lcab/snapp/passenger/units/second_destination/b;->h:I

    .line 372
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcab/snapp/mapmodule/a/a/n;-><init>(IDD)V

    .line 371
    invoke-virtual {v1, v8}, Lcab/snapp/mapmodule/a;->moveAnimated(Lcab/snapp/mapmodule/a/a/n;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->j:Lio/reactivex/b/c;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->getLocationObservable(Z)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$r33DEpyJ_StZxBAPFn-EFiVYqTc;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/second_destination/-$$Lambda$b$r33DEpyJ_StZxBAPFn-EFiVYqTc;-><init>(Lcab/snapp/passenger/units/second_destination/b;)V

    .line 378
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->j:Lio/reactivex/b/c;

    .line 403
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->j:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/second_destination/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/b;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->refreshLocation(Z)V

    return-void
.end method
