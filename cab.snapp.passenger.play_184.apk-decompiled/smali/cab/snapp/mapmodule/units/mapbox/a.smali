.class public Lcab/snapp/mapmodule/units/mapbox/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/mapmodule/units/mapbox/c;",
        "Lcab/snapp/mapmodule/units/mapbox/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private g:Lio/reactivex/b/c;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/16 v0, 0x12

    .line 64
    iput v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->a:I

    const/4 v0, 0x4

    .line 65
    iput v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->b:I

    const-string v0, "VEHICLE_ID_KEY"

    .line 66
    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->c:Ljava/lang/String;

    const-string v0, "MARKER_ID_KEY"

    .line 67
    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/mapbox/a;)I
    .locals 0

    .line 61
    iget p0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    return p0
.end method

.method private synthetic a()V
    .locals 3

    .line 163
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget v1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    const/16 v2, 0x7d4

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 164
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(I)V
    .locals 2

    .line 158
    new-instance p1, Lcab/snapp/mapmodule/a/b/c;

    iget v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    const/16 v1, 0x7d2

    invoke-direct {p1, v0, v1}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 159
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/mapmodule/a/a/m;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    .line 100
    iget v2, v0, Lcab/snapp/mapmodule/a/a/m;->id:I

    iget v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    if-ne v2, v3, :cond_14

    .line 1205
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    check-cast v2, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;

    .line 1207
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v3, :cond_14

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1210
    iget v3, v0, Lcab/snapp/mapmodule/a/a/m;->commandType:I

    const/high16 v4, 0x41900000    # 18.0f

    const-string v5, "bottom"

    const/4 v6, 0x0

    const-string v7, "MARKER_ID_KEY"

    const/4 v8, 0x4

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 1401
    :pswitch_1
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1406
    check-cast v0, Lcab/snapp/mapmodule/a/a/c;

    .line 1408
    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1409
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    const-string v4, "SECOND_DESTINATION_MARKER_TAG"

    invoke-virtual {v3, v4, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1411
    iget-wide v2, v0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    iget-wide v9, v0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    invoke-static {v2, v3, v9, v10}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v0

    .line 1412
    invoke-virtual {v0, v7, v4}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    .line 1416
    new-instance v2, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-direct {v2, v4, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1418
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1423
    :cond_0
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1425
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {v0, v4, v4}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1426
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v2, v14

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1427
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v2, v13

    .line 1428
    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1429
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 1426
    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    .line 1431
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1432
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1361
    :pswitch_2
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1366
    check-cast v0, Lcab/snapp/mapmodule/a/a/c;

    .line 1368
    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1369
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    const-string v4, "DESTINATION_MARKER_TAG"

    invoke-virtual {v3, v4, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1371
    iget-wide v2, v0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    iget-wide v9, v0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    invoke-static {v2, v3, v9, v10}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v0

    .line 1372
    invoke-virtual {v0, v7, v4}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    .line 1376
    new-instance v2, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-direct {v2, v4, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1379
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1381
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1384
    :cond_1
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1386
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {v0, v4, v4}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1387
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v2, v14

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1388
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v2, v13

    .line 1389
    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1390
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 1387
    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    .line 1392
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1393
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1322
    :pswitch_3
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1327
    check-cast v0, Lcab/snapp/mapmodule/a/a/c;

    .line 1329
    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1330
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    const-string v4, "ORIGIN_MARKER_TAG"

    invoke-virtual {v3, v4, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1332
    iget-wide v2, v0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    iget-wide v9, v0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    invoke-static {v2, v3, v9, v10}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v0

    .line 1333
    invoke-virtual {v0, v7, v4}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    .line 1337
    new-instance v2, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-direct {v2, v4, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1339
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {v0, v4, v4}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1340
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v6

    aput-object v6, v3, v14

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1341
    invoke-static {v6}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v6

    aput-object v6, v3, v13

    .line 1342
    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v5

    aput-object v5, v3, v12

    .line 1343
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v3, v6

    .line 1340
    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    .line 1345
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1347
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1350
    :cond_2
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v2

    if-nez v2, :cond_14

    .line 1352
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1353
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1760
    :pswitch_4
    check-cast v0, Lcab/snapp/mapmodule/a/a/t;

    .line 1762
    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    .line 1763
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v12, :cond_14

    .line 1770
    :cond_3
    :try_start_0
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;-><init>()V

    .line 1771
    :goto_0
    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_4

    .line 1773
    new-instance v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->include(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1775
    :cond_4
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->build()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v2

    .line 1776
    iget v3, v0, Lcab/snapp/mapmodule/a/a/t;->paddingLeft:I

    iget v4, v0, Lcab/snapp/mapmodule/a/a/t;->paddingTop:I

    iget v5, v0, Lcab/snapp/mapmodule/a/a/t;->paddingRight:I

    iget v0, v0, Lcab/snapp/mapmodule/a/a/t;->paddingBottom:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;IIII)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1782
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2, v0, v10}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1786
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1271
    :pswitch_5
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1276
    check-cast v0, Lcab/snapp/mapmodule/a/a/b;

    .line 1278
    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcab/snapp/mapmodule/a/a/b;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1279
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v3

    iget-object v3, v3, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 1280
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v3

    .line 1281
    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    new-instance v4, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v5, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/Feature;)V

    .line 1284
    iget-object v5, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1287
    iget-object v5, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v5

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1290
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    iget-object v5, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1291
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    goto :goto_1

    .line 1295
    :cond_5
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->setGeoJson(Lcom/mapbox/geojson/Feature;)V

    .line 1299
    :goto_1
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1301
    new-instance v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v8, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    .line 1302
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v14

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1303
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v13

    const-string v4, "center"

    .line 1304
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1305
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1302
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v2

    .line 1307
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1308
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1313
    :cond_6
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    new-array v2, v14, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1521
    :pswitch_6
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1526
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 1528
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1529
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1530
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    goto :goto_2

    .line 1533
    :cond_7
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    .line 1619
    :pswitch_7
    check-cast v0, Lcab/snapp/mapmodule/a/a/o;

    .line 1621
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/o;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/o;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iget v0, v0, Lcab/snapp/mapmodule/a/a/o;->zoom:F

    float-to-double v3, v0

    invoke-static {v2, v3, v4}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1625
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v3, Lcab/snapp/mapmodule/units/mapbox/a$3;

    invoke-direct {v3, p0}, Lcab/snapp/mapmodule/units/mapbox/a$3;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {v2, v0, v10, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1695
    :pswitch_8
    check-cast v0, Lcab/snapp/mapmodule/a/a/f;

    .line 1697
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/f;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/f;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iget v0, v0, Lcab/snapp/mapmodule/a/a/f;->zoom:F

    float-to-double v3, v0

    invoke-static {v2, v3, v4}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1703
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2, v0, v10}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void

    .line 1885
    :pswitch_9
    :try_start_1
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/b;

    invoke-virtual {v0, v14}, Lcab/snapp/mapmodule/units/mapbox/b;->setLocationLayerEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1889
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 1874
    :pswitch_a
    :try_start_2
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/mapbox/b;

    invoke-virtual {v0, v13}, Lcab/snapp/mapmodule/units/mapbox/b;->setLocationLayerEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1878
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :pswitch_b
    return-void

    .line 1843
    :pswitch_c
    check-cast v0, Lcab/snapp/mapmodule/a/a/k;

    .line 1845
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/k;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v0, :cond_14

    .line 1849
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v12, [Ljava/lang/Object;

    .line 1850
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v3, 0xfa

    .line 1851
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1852
    new-instance v3, Lcab/snapp/mapmodule/units/mapbox/a$7;

    invoke-direct {v3, p0, v0}, Lcab/snapp/mapmodule/units/mapbox/a$7;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1860
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1810
    :pswitch_d
    check-cast v0, Lcab/snapp/mapmodule/a/a/l;

    .line 1812
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v2, :cond_14

    .line 1816
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v12, [Ljava/lang/Object;

    .line 1817
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v4, 0xfa

    .line 1818
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1819
    new-instance v4, Lcab/snapp/mapmodule/units/mapbox/a$5;

    invoke-direct {v4, p0, v2}, Lcab/snapp/mapmodule/units/mapbox/a$5;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1827
    new-instance v4, Lcab/snapp/mapmodule/units/mapbox/a$6;

    invoke-direct {v4, p0, v2, v0}, Lcab/snapp/mapmodule/units/mapbox/a$6;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Lcab/snapp/mapmodule/a/a/l;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1837
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1801
    :pswitch_e
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v3, v13, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1803
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto :goto_3

    :cond_8
    return-void

    .line 1793
    :pswitch_f
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v3, v13, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1795
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto :goto_4

    :cond_9
    return-void

    .line 1732
    :pswitch_10
    check-cast v0, Lcab/snapp/mapmodule/a/a/s;

    .line 1734
    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_a

    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    .line 1735
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v12, :cond_14

    .line 1742
    :cond_a
    :try_start_3
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;-><init>()V

    .line 1743
    :goto_5
    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_b

    .line 1745
    new-instance v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->include(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1747
    :cond_b
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->build()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v2

    .line 1748
    iget v0, v0, Lcab/snapp/mapmodule/a/a/s;->padding:I

    invoke-static {v2, v0}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;I)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1749
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2, v0, v10}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 1753
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1726
    :pswitch_11
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 1727
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1720
    :pswitch_12
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 1721
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1709
    :pswitch_13
    check-cast v0, Lcab/snapp/mapmodule/a/a/r;

    .line 1711
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v2

    if-eqz v2, :cond_14

    iget v2, v0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14

    iget v2, v0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_14

    .line 1713
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget v0, v0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    float-to-double v3, v0

    invoke-static {v2, v3, v4}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1714
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2, v0, v10}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void

    .line 1682
    :pswitch_14
    check-cast v0, Lcab/snapp/mapmodule/a/a/e;

    .line 1684
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/e;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/e;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1689
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2, v0, v10}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void

    .line 1648
    :pswitch_15
    check-cast v0, Lcab/snapp/mapmodule/a/a/q;

    .line 1655
    iget v2, v0, Lcab/snapp/mapmodule/a/a/q;->y:F

    const v3, 0x47c35000    # 100000.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    .line 1656
    iget v0, v0, Lcab/snapp/mapmodule/a/a/q;->x:F

    div-float/2addr v0, v3

    float-to-double v2, v0

    .line 1657
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 1658
    new-instance v6, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v4

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    invoke-direct {v6, v7, v8, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 1660
    invoke-static {v6}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1661
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v3, Lcab/snapp/mapmodule/units/mapbox/a$4;

    invoke-direct {v3, p0}, Lcab/snapp/mapmodule/units/mapbox/a$4;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {v2, v0, v10, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1593
    :pswitch_16
    check-cast v0, Lcab/snapp/mapmodule/a/a/n;

    .line 1595
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/n;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/n;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1597
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v3, Lcab/snapp/mapmodule/units/mapbox/a$2;

    invoke-direct {v3, p0}, Lcab/snapp/mapmodule/units/mapbox/a$2;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {v2, v0, v10, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1563
    :pswitch_17
    check-cast v0, Lcab/snapp/mapmodule/a/a/j;

    .line 1565
    iget v2, v0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_14

    iget v2, v0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14

    .line 1567
    new-instance v2, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/j;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/j;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iget v0, v0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    float-to-double v3, v0

    invoke-static {v2, v3, v4}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v0

    .line 1571
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v3, Lcab/snapp/mapmodule/units/mapbox/a$1;

    invoke-direct {v3, p0}, Lcab/snapp/mapmodule/units/mapbox/a$1;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {v2, v0, v10, v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1551
    :pswitch_18
    check-cast v0, Lcab/snapp/mapmodule/a/a/i;

    .line 1553
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v2, :cond_14

    new-array v3, v13, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1556
    iget v0, v0, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    aput-object v0, v3, v14

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1539
    :pswitch_19
    check-cast v0, Lcab/snapp/mapmodule/a/a/h;

    .line 1541
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v2, :cond_14

    new-array v3, v13, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1544
    iget v0, v0, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v0

    aput-object v0, v3, v14

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1490
    :pswitch_1a
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1495
    check-cast v0, Lcab/snapp/mapmodule/a/a/p;

    .line 1498
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    if-eqz v2, :cond_c

    .line 1501
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1502
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1503
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    return-void

    .line 1507
    :cond_c
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1510
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1511
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1512
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 1440
    :pswitch_1b
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1445
    check-cast v0, Lcab/snapp/mapmodule/a/a/d;

    .line 1447
    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcab/snapp/mapmodule/a/a/d;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1448
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1450
    iget-wide v2, v0, Lcab/snapp/mapmodule/a/a/d;->longitude:D

    iget-wide v4, v0, Lcab/snapp/mapmodule/a/a/d;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v2

    .line 1451
    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    const-string v4, "VEHICLE_ID_KEY"

    invoke-virtual {v2, v4, v3}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-static {v2}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v2

    .line 1455
    new-instance v3, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1457
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v2

    if-nez v2, :cond_e

    .line 1459
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1462
    :cond_e
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1464
    new-instance v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    .line 1465
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v14

    iget v4, v0, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    .line 1466
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v13

    iget v4, v0, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    .line 1467
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1468
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1469
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1470
    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1465
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v2

    .line 1472
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1474
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1478
    :cond_f
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v14

    iget v4, v0, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    .line 1479
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v13

    iget v4, v0, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    .line 1480
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1481
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1482
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1483
    invoke-static {v5}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1478
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    .line 1484
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    iget-object v4, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1221
    :pswitch_1c
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1226
    check-cast v0, Lcab/snapp/mapmodule/a/a/a;

    .line 1228
    invoke-virtual {v2}, Lcab/snapp/mapmodule/units/mapbox/MapBoxController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcab/snapp/mapmodule/a/a/a;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1229
    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/a;->longitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/a;->latitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v3

    .line 1230
    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    new-instance v4, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v5, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/Feature;)V

    .line 1234
    iget-object v5, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1237
    iget-object v5, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v5

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v5

    if-nez v5, :cond_10

    .line 1240
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    iget-object v5, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1241
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    goto :goto_6

    .line 1245
    :cond_10
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->setGeoJson(Lcom/mapbox/geojson/Feature;)V

    .line 1249
    :goto_6
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1251
    new-instance v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    .line 1252
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v14

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1253
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v13

    .line 1254
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1252
    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v2

    .line 1256
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1257
    iget-object v3, v1, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1262
    :cond_11
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    new-array v2, v14, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1215
    :pswitch_1d
    iget-object v0, v1, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_14

    .line 1900
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_9

    .line 1905
    :cond_12
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 1907
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1908
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1909
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    goto :goto_7

    .line 1912
    :cond_13
    iget-object v2, v1, Lcab/snapp/mapmodule/units/mapbox/a;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 1914
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1915
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1916
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 7

    .line 168
    new-instance v6, Lcab/snapp/mapmodule/a/b/b;

    iget v1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcab/snapp/mapmodule/a/b/b;-><init>(IDD)V

    .line 169
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcab/snapp/mapmodule/units/mapbox/a;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-object p0
.end method

.method private synthetic b()V
    .locals 11

    .line 141
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget v1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 142
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 146
    iget-object v1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    .line 147
    new-instance v10, Lcab/snapp/mapmodule/a/b/a;

    iget v3, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    .line 149
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    .line 150
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v6

    iget-wide v8, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    double-to-int v8, v8

    iget-wide v0, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    double-to-int v9, v0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcab/snapp/mapmodule/a/b/a;-><init>(IDDII)V

    .line 154
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcab/snapp/mapmodule/units/mapbox/a;)Ljava/util/Map;
    .locals 0

    .line 61
    iget-object p0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic lambda$9W8h0O0j_ifHVqW1VUhQgRgbqnM(Lcab/snapp/mapmodule/units/mapbox/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/a;->a(I)V

    return-void
.end method

.method public static synthetic lambda$F4gQO8KWRm5MPDwPE4Pfqi_kuV8(Lcab/snapp/mapmodule/units/mapbox/a;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->b()V

    return-void
.end method

.method public static synthetic lambda$IyjFL5-L_4M_0L7HkSF4YxyNm-g(Lcab/snapp/mapmodule/units/mapbox/a;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->a()V

    return-void
.end method

.method public static synthetic lambda$fGaHe6RT4ns5XrmRPFnd4M6gp1Y(Lcab/snapp/mapmodule/units/mapbox/a;Lcab/snapp/mapmodule/a/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/a;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public static synthetic lambda$risAJs1L5GLaeG5dWtCKCME_Wx8(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/units/mapbox/a;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public disableScrolling()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScrolling()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 97
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->g:Lio/reactivex/b/c;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getCommandsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$fGaHe6RT4ns5XrmRPFnd4M6gp1Y;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$fGaHe6RT4ns5XrmRPFnd4M6gp1Y;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->g:Lio/reactivex/b/c;

    .line 106
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->g:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/units/mapbox/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public setMap(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/mapbox/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    .line 133
    :cond_0
    iput-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 134
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 135
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    const v0, 0x800053

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setLogoGravity(I)V

    .line 137
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setMinZoomPreference(D)V

    .line 138
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setMaxZoomPreference(D)V

    .line 140
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v0, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$F4gQO8KWRm5MPDwPE4Pfqi_kuV8;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$F4gQO8KWRm5MPDwPE4Pfqi_kuV8;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    .line 157
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v0, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$9W8h0O0j_ifHVqW1VUhQgRgbqnM;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$9W8h0O0j_ifHVqW1VUhQgRgbqnM;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V

    .line 162
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v0, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$IyjFL5-L_4M_0L7HkSF4YxyNm-g;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$IyjFL5-L_4M_0L7HkSF4YxyNm-g;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V

    .line 167
    iget-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v0, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$risAJs1L5GLaeG5dWtCKCME_Wx8;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/mapbox/-$$Lambda$a$risAJs1L5GLaeG5dWtCKCME_Wx8;-><init>(Lcab/snapp/mapmodule/units/mapbox/a;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    .line 173
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object p1

    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget v1, p0, Lcab/snapp/mapmodule/units/mapbox/a;->e:I

    const/16 v2, 0x7dc

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public zoom(F)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a;->f:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_0

    float-to-double v1, p1

    .line 182
    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->zoomBy(D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V

    :cond_0
    return-void
.end method
