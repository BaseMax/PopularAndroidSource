.class final Lcom/mapbox/mapboxsdk/location/LocationLayerController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accuracyValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

.field private final compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final internalRenderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

.field private isHidden:Z

.field private final latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field final layerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final layerSourceProvider:Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

.field private locationFeature:Lcom/mapbox/geojson/Feature;

.field private locationSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

.field private final mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field private positionManager:Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;

.field private renderMode:I

.field private style:Lcom/mapbox/mapboxsdk/maps/Style;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;Lcom/mapbox/mapboxsdk/location/LayerFeatureProvider;Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    .line 414
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationLayerController$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController$1;-><init>(Lcom/mapbox/mapboxsdk/location/LocationLayerController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 423
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationLayerController$2;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController$2;-><init>(Lcom/mapbox/mapboxsdk/location/LocationLayerController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 431
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationLayerController$3;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController$3;-><init>(Lcom/mapbox/mapboxsdk/location/LocationLayerController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 439
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationLayerController$4;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController$4;-><init>(Lcom/mapbox/mapboxsdk/location/LocationLayerController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->accuracyValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 86
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 87
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 88
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSourceProvider:Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

    .line 89
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 90
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-virtual {p4, p1, p6}, Lcom/mapbox/mapboxsdk/location/LayerFeatureProvider;->generateLocationFeature(Lcom/mapbox/geojson/Feature;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    .line 91
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->internalRenderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

    .line 92
    invoke-virtual {p0, p2, p6}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->initializeComponents(Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mapbox/mapboxsdk/location/LocationLayerController;Lcom/mapbox/geojson/Point;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLocationPoint(Lcom/mapbox/geojson/Point;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/location/LocationLayerController;Ljava/lang/String;F)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setBearingProperty(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$200(Lcom/mapbox/mapboxsdk/location/LocationLayerController;F)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->updateAccuracyRadius(F)V

    return-void
.end method

.method private addAccuracyLayer()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSourceProvider:Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;->generateAccuracyLayer()Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    const-string v1, "mapbox-location-background-layer"

    .line 254
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addLayerToMap(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private addLayerToMap(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayerBelow(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLayers()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSourceProvider:Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

    const-string v1, "mapbox-location-bearing-layer"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;->generateLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    .line 237
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->positionManager:Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;->addLayerToMap(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 238
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "mapbox-location-foreground-layer"

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mapbox-location-background-layer"

    .line 242
    invoke-direct {p0, v1, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapbox-location-shadow-layer"

    .line 243
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addAccuracyLayer()V

    return-void
.end method

.method private addLocationSource()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSourceProvider:Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;->generateSource(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    .line 285
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    return-void
.end method

.method private addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSourceProvider:Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/location/LayerSourceProvider;->generateLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addLayerToMap(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private determineIconsSource(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 6

    .line 369
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "mapbox-location-icon"

    .line 369
    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapbox-location-stale-icon"

    invoke-direct {p0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mapbox-location-stroke-icon"

    invoke-direct {p0, v2, v3}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mapbox-location-background-stale-icon"

    invoke-direct {p0, v3, v4}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "mapbox-location-bearing-icon"

    invoke-direct {p0, p1, v4}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v5, "mapbox-property-foreground-icon"

    invoke-virtual {v4, v5, v0}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v4, "mapbox-property-background-icon"

    invoke-virtual {v0, v4, v2}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v2, "mapbox-property-foreground-stale-icon"

    invoke-virtual {v0, v2, v1}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v1, "mapbox-property-background-stale-icon"

    invoke-virtual {v0, v1, v3}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v1, "mapbox-property-shadow-icon"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    return-void
.end method

.method private refreshSource()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v1, "mapbox-location-source"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->getSourceAs(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationSource:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->setGeoJson(Lcom/mapbox/geojson/Feature;)V

    :cond_0
    return-void
.end method

.method private removeLayers()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Ljava/lang/String;)Z

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private setBearingProperty(Ljava/lang/String;F)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 271
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    return-void
.end method

.method private setLayerVisibility(Ljava/lang/String;Z)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "visible"

    const-string v1, "none"

    if-eqz p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 228
    :goto_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getVisibility()Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    iget-object v3, v3, Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 229
    :goto_1
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v2}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    :cond_2
    return-void
.end method

.method private setLocationPoint(Lcom/mapbox/geojson/Point;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {p1, v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;Lcom/google/gson/JsonObject;)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    .line 299
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    :cond_0
    return-void
.end method

.method private styleAccuracy(FI)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mapbox-property-accuracy-alpha"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 329
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mapbox-property-accuracy-color"

    invoke-virtual {p1, v0, p2}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    return-void
.end method

.method private styleBackground(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 309
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor()Ljava/lang/Integer;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 312
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p1

    .line 311
    invoke-virtual {v1, v2, p1}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 314
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v2, "mapbox-location-stroke-icon"

    invoke-virtual {v1, v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v1, "mapbox-location-background-stale-icon"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private styleBearing(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v1, "mapbox-location-bearing-icon"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private styleForeground(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 335
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object v2

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 338
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object v3

    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 340
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 342
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    .line 345
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable()I

    move-result v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p1

    .line 344
    invoke-virtual {v1, v2, p1}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v2, "mapbox-location-icon"

    invoke-virtual {p1, v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 349
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    const-string v0, "mapbox-location-stale-icon"

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private styleScaling(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 11

    .line 353
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v1

    .line 355
    instance-of v2, v1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 358
    invoke-static {}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->linear()Lcom/mapbox/mapboxsdk/style/expressions/Expression$Interpolator;

    move-result-object v4

    invoke-static {}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->zoom()Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/mapbox/mapboxsdk/style/expressions/Expression$Stop;

    iget-object v7, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 359
    invoke-virtual {v7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getMinZoomLevel()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/style/expressions/Expression$Stop;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 360
    invoke-virtual {v7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getMaxZoomLevel()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/style/expressions/Expression$Stop;

    move-result-object v7

    aput-object v7, v6, v2

    .line 358
    invoke-static {v4, v5, v6}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;->interpolate(Lcom/mapbox/mapboxsdk/style/expressions/Expression$Interpolator;Lcom/mapbox/mapboxsdk/style/expressions/Expression;[Lcom/mapbox/mapboxsdk/style/expressions/Expression$Stop;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v2

    .line 357
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Lcom/mapbox/mapboxsdk/style/expressions/Expression;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v3, v8

    .line 356
    invoke-virtual {v1, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private styleShadow(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->bitmapProvider:Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;

    invoke-virtual {v1, p1}, Lcom/mapbox/mapboxsdk/location/LayerBitmapProvider;->generateShadowBitmap(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "mapbox-location-shadow-icon"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateAccuracyRadius(F)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mapbox-property-accuracy-radius"

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 276
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    return-void
.end method


# virtual methods
.method final applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->positionManager:Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;->update(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->removeLayers()V

    .line 112
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addLayers()V

    .line 113
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->hide()V

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 120
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleShadow(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 125
    :cond_1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleForeground(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleBackground(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleBearing(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 128
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha()F

    move-result v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleAccuracy(FI)V

    .line 129
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleScaling(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->determineIconsSource(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 132
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    if-nez p1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->show()V

    :cond_2
    return-void
.end method

.method final getAnimationListeners()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 449
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 452
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v3, v4}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 454
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v3, v4}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_1
    :goto_0
    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 459
    :cond_2
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->accuracyValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method final getRenderMode()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    return v0
.end method

.method final hide()V
    .locals 3

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    .line 191
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final initializeComponents(Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 3

    .line 96
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->style:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 97
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;-><init>(Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->positionManager:Lcom/mapbox/mapboxsdk/location/LocationComponentPositionManager;

    .line 98
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addLocationSource()V

    .line 99
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->addLayers()V

    .line 100
    invoke-virtual {p0, p2}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->applyStyle(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 102
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->hide()V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->show()V

    return-void
.end method

.method final isConsumingCompass()Z
    .locals 2

    .line 221
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isHidden()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    return v0
.end method

.method final onMapClick(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 6

    .line 405
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->toScreenLocation(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mapbox-location-background-layer"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "mapbox-location-foreground-layer"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "mapbox-location-bearing-layer"

    aput-object v5, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 411
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method final setLocationsStale(Z)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mapbox-property-location-stale"

    invoke-virtual {v0, v2, v1}, Lcom/mapbox/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    .line 395
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "mapbox-location-accuracy-layer"

    .line 396
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method final setRenderMode(I)V
    .locals 1

    .line 138
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 141
    :cond_0
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    .line 143
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->styleForeground(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 145
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->show()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->determineIconsSource(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 148
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->internalRenderModeChangedListener:Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/OnRenderModeChangedListener;->onRenderModeChanged(I)V

    return-void
.end method

.method final show()V
    .locals 10

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->isHidden:Z

    .line 161
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v2, "mapbox-property-location-stale"

    invoke-virtual {v1, v2}, Lcom/mapbox/geojson/Feature;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 162
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/4 v3, 0x4

    const-string v4, "mapbox-location-bearing-layer"

    const-string v5, "mapbox-location-accuracy-layer"

    const-string v6, "mapbox-location-background-layer"

    const-string v7, "mapbox-location-foreground-layer"

    const-string v8, "mapbox-location-shadow-layer"

    const/4 v9, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, v8, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 165
    invoke-direct {p0, v7, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0, v6, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    xor-int/2addr v1, v9

    .line 167
    invoke-direct {p0, v5, v1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 168
    invoke-direct {p0, v4, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    return-void

    .line 178
    :cond_1
    invoke-direct {p0, v8, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 179
    invoke-direct {p0, v7, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 180
    invoke-direct {p0, v6, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 181
    invoke-direct {p0, v5, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 182
    invoke-direct {p0, v4, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 171
    :cond_2
    invoke-direct {p0, v8, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 172
    invoke-direct {p0, v7, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 173
    invoke-direct {p0, v6, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    xor-int/lit8 v0, v1, 0x1

    .line 174
    invoke-direct {p0, v5, v0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 175
    invoke-direct {p0, v4, v9}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setLayerVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method final updateForegroundBearing(F)V
    .locals 2

    .line 211
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->renderMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string v0, "mapbox-property-gps-bearing"

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->setBearingProperty(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method final updateForegroundOffset(D)V
    .locals 4

    .line 197
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    .line 198
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide v2, -0x4056666666666666L    # -0.05

    mul-double v2, v2, p1

    double-to-float v2, v2

    .line 199
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 200
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string v3, "mapbox-property-foreground-icon-offset"

    invoke-virtual {v2, v3, v0}, Lcom/mapbox/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 202
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide v1, 0x3fa999999999999aL    # 0.05

    mul-double p1, p1, v1

    double-to-float p1, p1

    .line 204
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 205
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->locationFeature:Lcom/mapbox/geojson/Feature;

    const-string p2, "mapbox-property-shadow-icon-offset"

    invoke-virtual {p1, p2, v0}, Lcom/mapbox/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 207
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationLayerController;->refreshSource()V

    return-void
.end method
