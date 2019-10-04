.class public Lcab/snapp/passenger/units/search/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/search/e;",
        "Lcab/snapp/passenger/units/search/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

.field b:Lcab/snapp/passenger/f/o;
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

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcab/snapp/passenger/units/search/a;->h:I

    const/16 v1, 0x270f

    .line 98
    iput v1, p0, Lcab/snapp/passenger/units/search/a;->i:I

    .line 102
    iput-boolean v0, p0, Lcab/snapp/passenger/units/search/a;->j:Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/search/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/search/c;->onShowResults(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;Z)V

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getFavorites()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/search/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/search/a$1;-><init>(Lcab/snapp/passenger/units/search/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 362
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->getPlaceDetail()Lcab/snapp/passenger/data/models/PlaceDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;->getPlaceDetail()Lcab/snapp/passenger/data/models/PlaceDetail;

    move-result-object p1

    .line 365
    new-instance v0, Lcab/snapp/passenger/data/models/GeoCodeModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/GeoCodeModel;-><init>()V

    .line 366
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PlaceDetail;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/GeoCodeModel;->setId(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PlaceDetail;->getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PlaceDetail;->getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->getLocation()Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PlaceDetail;->getGeometry()Lcab/snapp/passenger/data/models/PlaceDetailGeometry;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->getLocation()Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    move-result-object v1

    .line 373
    new-instance v2, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceDetailLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceDetailLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    .line 375
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data/models/GeoCodeModel;->setLatLng(Lcab/snapp/passenger/data/models/PlaceLatLng;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->d:Lcab/snapp/passenger/c/h;

    iget v1, p0, Lcab/snapp/passenger/units/search/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->from(Lcab/snapp/passenger/data/models/PlaceDetail;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/c/h;->addResult(Ljava/lang/Integer;Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    .line 378
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->handleBack()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/GeocodeRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/GeocodeRequest;-><init>()V

    .line 289
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/GeocodeRequest;->setPhrase(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 292
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getCedarSearch(Lcab/snapp/passenger/data_access_layer/network/requests/GeocodeRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/search/-$$Lambda$a$wmMFHAKBgknVqKwNn0PiAvjwWVo;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/search/-$$Lambda$a$wmMFHAKBgknVqKwNn0PiAvjwWVo;-><init>(Lcab/snapp/passenger/units/search/a;Ljava/lang/String;)V

    new-instance p1, Lcab/snapp/passenger/units/search/-$$Lambda$a$l5b3Cihkpz8o2xlejyNYXPSkPCs;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/search/-$$Lambda$a$l5b3Cihkpz8o2xlejyNYXPSkPCs;-><init>(Lcab/snapp/passenger/units/search/a;)V

    .line 293
    invoke-virtual {v0, v1, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/search/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    .line 208
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->getPoweredBy()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x259

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->getPoweredBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "smapp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x259

    goto :goto_0

    :cond_0
    const/16 v1, 0x258

    .line 216
    :goto_0
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->getPredictions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->getPredictions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;->getPredictions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/data/models/AutocompletePrediction;

    if-eqz v4, :cond_1

    .line 222
    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/AutocompletePrediction;->getStructuredFormatting()Lcab/snapp/passenger/data/models/PredictionStructuredFormatting;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 224
    invoke-static {v4}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->from(Lcab/snapp/passenger/data/models/AutocompletePrediction;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_2
    iget-boolean p2, p0, Lcab/snapp/passenger/units/search/a;->j:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    .line 231
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 232
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 234
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 235
    iget-object p2, p0, Lcab/snapp/passenger/units/search/a;->d:Lcab/snapp/passenger/c/h;

    iget v0, p0, Lcab/snapp/passenger/units/search/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcab/snapp/passenger/c/h;->addResult(Ljava/lang/Integer;Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->handleBack()V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    .line 242
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    if-ne v1, v2, :cond_4

    .line 244
    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/units/search/c;->onShowResults(Ljava/util/List;Z)V

    goto :goto_2

    .line 248
    :cond_4
    invoke-virtual {v0, v3, v5}, Lcab/snapp/passenger/units/search/c;->onShowResults(Ljava/util/List;Z)V

    .line 252
    :cond_5
    :goto_2
    iput-boolean v5, p0, Lcab/snapp/passenger/units/search/a;->j:Z

    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 258
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    if-ne v1, v2, :cond_7

    .line 260
    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/units/search/c;->onShowResults(Ljava/util/List;Z)V

    return-void

    .line 264
    :cond_7
    invoke-virtual {v0, v3, v5}, Lcab/snapp/passenger/units/search/c;->onShowResults(Ljava/util/List;Z)V

    :cond_8
    return-void

    .line 271
    :cond_9
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/search/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    .line 296
    iget-boolean v1, p0, Lcab/snapp/passenger/units/search/a;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 299
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/CedarGeocodeResult;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/CedarGeocodeResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/CedarGeocodeResult;

    .line 302
    iget-object p2, p0, Lcab/snapp/passenger/units/search/a;->d:Lcab/snapp/passenger/c/h;

    iget v0, p0, Lcab/snapp/passenger/units/search/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->from(Lcab/snapp/passenger/data/models/CedarGeocodeResult;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcab/snapp/passenger/c/h;->addResult(Ljava/lang/Integer;Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    .line 303
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->handleBack()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onNoResult()V

    .line 312
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcab/snapp/passenger/units/search/a;->j:Z

    return-void

    .line 316
    :cond_2
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 318
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;->getCedarGeocodeResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/CedarGeocodeResult;

    .line 321
    invoke-static {v1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->from(Lcab/snapp/passenger/data/models/CedarGeocodeResult;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {v0, p1, v2}, Lcab/snapp/passenger/units/search/c;->onShowResults(Ljava/util/List;Z)V

    :cond_4
    return-void

    :cond_5
    if-eqz v0, :cond_6

    .line 334
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onNoResult()V

    :cond_6
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/search/a;->a(Ljava/lang/String;)V

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

.method static synthetic b(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 395
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "fa-IR"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "fr-FR"

    goto :goto_0

    :cond_1
    const-string v2, "en-GB"

    :cond_2
    :goto_0
    return-object v2
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/c;->onNoResult()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Anf5uIUkZamGgPABmosgZhVy0V4(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/search/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$JyJcRZmTjhxW6X4WC8vx_Qlx_R4(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/search/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;)V

    return-void
.end method

.method public static synthetic lambda$NqyqcYV57k-Usno_kG_BmkbPZ8I(Lcab/snapp/passenger/units/search/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/search/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$l5b3Cihkpz8o2xlejyNYXPSkPCs(Lcab/snapp/passenger/units/search/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/search/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$rdeHlvrcqG8blG9aDwTH20ed-Nc(Lcab/snapp/passenger/units/search/a;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/search/a;->a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;)V

    return-void
.end method

.method public static synthetic lambda$wmMFHAKBgknVqKwNn0PiAvjwWVo(Lcab/snapp/passenger/units/search/a;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/search/a;->a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;)V

    return-void
.end method


# virtual methods
.method public getSearchRequestCode()I
    .locals 1

    .line 188
    iget v0, p0, Lcab/snapp/passenger/units/search/a;->i:I

    return v0
.end method

.method public getSnappRideDataManager()Lcab/snapp/passenger/c/g;
    .locals 1

    .line 705
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    return-object v0
.end method

.method public handleBack()V
    .locals 4

    .line 1458
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "[back]"

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SEARCH_ORIGIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1464
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SEARCH_DESTINATION:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->finish()V

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/search/e;->navigateUp(Landroid/app/Activity;)V

    .line 452
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onNavigatingUp()V

    :cond_3
    return-void
.end method

.method public handleEmptyInput()V
    .locals 3

    .line 631
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/search/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/search/c;->onShowResults(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;Z)V

    :cond_0
    return-void
.end method

.method public handleFavoriteDetails(Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->d:Lcab/snapp/passenger/c/h;

    iget v1, p0, Lcab/snapp/passenger/units/search/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/c/h;->addResult(Ljava/lang/Integer;Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    .line 623
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->handleBack()V

    return-void
.end method

.method public handleGeocodeDetails(Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->d:Lcab/snapp/passenger/c/h;

    iget v1, p0, Lcab/snapp/passenger/units/search/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/c/h;->addResult(Ljava/lang/Integer;Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    .line 588
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/passenger/f/p;->requestLogSelectOriginItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 595
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/passenger/f/p;->requestLogSelectDestinationItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 599
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/passenger/f/p;->requestLogSelectSecondDestinationItem(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;)V

    .line 602
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->handleBack()V

    return-void

    .line 606
    :cond_4
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2354
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 2358
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 2359
    invoke-static {}, Lcab/snapp/passenger/units/search/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->getPlaceDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/search/-$$Lambda$a$JyJcRZmTjhxW6X4WC8vx_Qlx_R4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/search/-$$Lambda$a$JyJcRZmTjhxW6X4WC8vx_Qlx_R4;-><init>(Lcab/snapp/passenger/units/search/a;)V

    sget-object v1, Lcab/snapp/passenger/units/search/-$$Lambda$a$Anf5uIUkZamGgPABmosgZhVy0V4;->INSTANCE:Lcab/snapp/passenger/units/search/-$$Lambda$a$Anf5uIUkZamGgPABmosgZhVy0V4;

    .line 2360
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 2358
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/search/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public handleSearch(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 564
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2198
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2203
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 2204
    invoke-static {}, Lcab/snapp/passenger/units/search/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/search/a;->e:Lcab/snapp/passenger/c/e;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/e;->getSavedLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/d;->getAutoCompletePredictions(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/search/-$$Lambda$a$rdeHlvrcqG8blG9aDwTH20ed-Nc;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/search/-$$Lambda$a$rdeHlvrcqG8blG9aDwTH20ed-Nc;-><init>(Lcab/snapp/passenger/units/search/a;Ljava/lang/String;)V

    new-instance v2, Lcab/snapp/passenger/units/search/-$$Lambda$a$NqyqcYV57k-Usno_kG_BmkbPZ8I;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/search/-$$Lambda$a$NqyqcYV57k-Usno_kG_BmkbPZ8I;-><init>(Lcab/snapp/passenger/units/search/a;Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 2203
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/search/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_2
    :goto_0
    return-void

    .line 566
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/search/a;->a()V

    return-void
.end method

.method public handleVoiceSearch()V
    .locals 5

    .line 473
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 482
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Recognizer Not Present"

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    goto :goto_0

    .line 486
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fa"

    const-string v2, "android.speech.extra.LANGUAGE"

    .line 487
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    .line 488
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    .line 489
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12029d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x9c41

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1505
    :goto_0
    iget v0, p0, Lcab/snapp/passenger/units/search/a;->i:I

    const/16 v1, 0x53e

    const-string v2, "Pre-ride"

    if-ne v0, v1, :cond_5

    .line 1507
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const-string v3, "searchButton[voiceSearch]"

    const-string v4, "rideOption"

    if-ne v0, v1, :cond_2

    .line 1509
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1510
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 1511
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1512
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1514
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "In-ride"

    if-ne v0, v1, :cond_3

    .line 1516
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1517
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 1518
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1519
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1521
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1523
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1524
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 1525
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1526
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1528
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 1530
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1531
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 1532
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1533
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1539
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "voiceSearch"

    const-string v3, "searchButton"

    if-nez v0, :cond_6

    .line 1541
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1542
    invoke-virtual {v0, v3, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "setOrigin"

    .line 1543
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1544
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1546
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 1548
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1549
    invoke-virtual {v0, v3, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "setDestination"

    .line 1550
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1551
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onActivityResultModelReceived(Lcab/snapp/passenger/data/models/OnActivityResultModel;)V
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 419
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getRequestCode()I

    move-result v0

    const v1, 0x9c41

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getData()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 425
    iput-boolean v1, p0, Lcab/snapp/passenger/units/search/a;->j:Z

    .line 426
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/search/c;->onVoiceSearchDetected(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFavoriteItemClicked()V
    .locals 5

    .line 643
    iget v0, p0, Lcab/snapp/passenger/units/search/a;->i:I

    const-string v1, "Pre-ride"

    const/16 v2, 0x53e

    if-ne v0, v2, :cond_3

    .line 645
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "searchButton[favoritSelect]"

    const-string v4, "rideOption"

    if-ne v0, v2, :cond_0

    .line 647
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 648
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "selectServiceType"

    .line 649
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 650
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "In-ride"

    if-ne v0, v1, :cond_1

    .line 654
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 655
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 656
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 657
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 661
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 662
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 663
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 664
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 666
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 668
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 669
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 670
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 671
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 677
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v2, "favoritSelect"

    const-string v3, "searchButton"

    if-nez v0, :cond_4

    .line 679
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 680
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "setOrigin"

    .line 681
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 682
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 686
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 688
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 689
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "setDestination"

    .line 690
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 691
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_5
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 713
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 714
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/search/a;)V

    .line 721
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 724
    instance-of v1, v0, Lcab/snapp/passenger/units/search/SearchController;

    if-eqz v1, :cond_5

    .line 726
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 728
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Key Is Pushed For"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcab/snapp/passenger/units/search/a;->h:I

    .line 732
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Key Search Request Code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcab/snapp/passenger/units/search/a;->i:I

    .line 738
    :cond_2
    iget v1, p0, Lcab/snapp/passenger/units/search/a;->h:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const v1, 0x7f1201ef

    goto :goto_0

    :cond_3
    const v1, 0x7f1202ab

    goto :goto_0

    :cond_4
    const v1, 0x7f1202a9

    .line 750
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 752
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/search/c;->onHandleTopTitle(Ljava/lang/String;)V

    .line 756
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 758
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/search/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 762
    :cond_6
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/activities/root/RootActivity;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/search/-$$Lambda$S4ABZ0b5Tjw2FP2WuK6i0d7sdbc;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/search/-$$Lambda$S4ABZ0b5Tjw2FP2WuK6i0d7sdbc;-><init>(Lcab/snapp/passenger/units/search/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 761
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/search/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 764
    invoke-direct {p0}, Lcab/snapp/passenger/units/search/a;->a()V

    .line 765
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 767
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onReadyToSearch()V

    .line 768
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->setStatusBarColor()V

    :cond_7
    return-void
.end method

.method public onUnitPause()V
    .locals 1

    .line 790
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 791
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onUnavailableForShowcase()V

    .line 796
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->b:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 776
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 778
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onReadyForShowcase()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a;->g:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Search Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method
