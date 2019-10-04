.class public Lcab/snapp/mapmodule/views/MapBoxView;
.super Lcom/mapbox/mapboxsdk/maps/MapView;
.source "SourceFile"


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/view/ScaleGestureDetector;

.field private g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private h:Lio/reactivex/b/b;

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

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

.field private l:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

.field private m:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

.field private n:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 74
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->a:I

    const/16 p1, 0x8

    .line 75
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->b:I

    const-string p1, "VEHICLE_ID_KEY"

    .line 76
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->c:Ljava/lang/String;

    const-string p1, "MARKER_ID_KEY"

    .line 77
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->d:Ljava/lang/String;

    .line 84
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->h:Lio/reactivex/b/b;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->i:Ljava/util/Map;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    .line 87
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$hzLYfRBBojbNCS6fggYVRx8c8QU;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$hzLYfRBBojbNCS6fggYVRx8c8QU;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->k:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 103
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->l:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

    .line 107
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$4N7rV2Y4V8U_jYFHuDOygj4W0XU;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$4N7rV2Y4V8U_jYFHuDOygj4W0XU;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->m:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

    .line 111
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->n:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 129
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x12

    .line 74
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->a:I

    const/16 p1, 0x8

    .line 75
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->b:I

    const-string p1, "VEHICLE_ID_KEY"

    .line 76
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->c:Ljava/lang/String;

    const-string p1, "MARKER_ID_KEY"

    .line 77
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->d:Ljava/lang/String;

    .line 84
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->h:Lio/reactivex/b/b;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->i:Ljava/util/Map;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    .line 87
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$hzLYfRBBojbNCS6fggYVRx8c8QU;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$hzLYfRBBojbNCS6fggYVRx8c8QU;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->k:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 103
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->l:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

    .line 107
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$4N7rV2Y4V8U_jYFHuDOygj4W0XU;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$4N7rV2Y4V8U_jYFHuDOygj4W0XU;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->m:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

    .line 111
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->n:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 135
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x12

    .line 74
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->a:I

    const/16 p1, 0x8

    .line 75
    iput p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->b:I

    const-string p1, "VEHICLE_ID_KEY"

    .line 76
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->c:Ljava/lang/String;

    const-string p1, "MARKER_ID_KEY"

    .line 77
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->d:Ljava/lang/String;

    .line 84
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->h:Lio/reactivex/b/b;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->i:Ljava/util/Map;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    .line 87
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$hzLYfRBBojbNCS6fggYVRx8c8QU;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$hzLYfRBBojbNCS6fggYVRx8c8QU;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->k:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    .line 103
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->l:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

    .line 107
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$4N7rV2Y4V8U_jYFHuDOygj4W0XU;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$4N7rV2Y4V8U_jYFHuDOygj4W0XU;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->m:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

    .line 111
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$MsHL7ScF_f5Bx-isNKuB56WbYZA;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->n:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 142
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->a()V

    return-void
.end method

.method static synthetic a(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 2328
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v0, 0x3ff8cccccccccccdL    # 1.55

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method static synthetic a(Lcab/snapp/mapmodule/views/MapBoxView;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->h:Lio/reactivex/b/b;

    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getCommandsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    new-instance v2, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$J8a6GLVe-hfcQ7H2wt-eXwAJQ0Q;

    invoke-direct {v2, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$J8a6GLVe-hfcQ7H2wt-eXwAJQ0Q;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {v1, v2}, Lio/reactivex/j/b;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method

.method private synthetic a(I)V
    .locals 2

    .line 104
    new-instance p1, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v0

    const/16 v1, 0x7d2

    invoke-direct {p1, v0, v1}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 105
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/mapmodule/a/a/m;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iget v0, p1, Lcab/snapp/mapmodule/a/a/m;->id:I

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 1416
    iget v0, p1, Lcab/snapp/mapmodule/a/a/m;->commandType:I

    const/high16 v1, 0x41900000    # 18.0f

    const-string v2, "bottom"

    const/4 v3, 0x0

    const-string v4, "MARKER_ID_KEY"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xfa

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 1585
    :pswitch_1
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1590
    check-cast p1, Lcab/snapp/mapmodule/a/a/c;

    .line 1592
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1593
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    const-string v3, "SECOND_DESTINATION_MARKER_TAG"

    invoke-virtual {v1, v3, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1595
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    iget-wide v12, p1, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    invoke-static {v0, v1, v12, v13}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    .line 1596
    invoke-virtual {p1, v4, v3}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    .line 1600
    new-instance v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-direct {v0, v3, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1602
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1604
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1607
    :cond_0
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-nez p1, :cond_13

    .line 1609
    new-instance p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {p1, v3, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1610
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1611
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v11

    .line 1612
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1613
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1610
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object p1

    .line 1615
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    return-void

    .line 1548
    :pswitch_2
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1553
    check-cast p1, Lcab/snapp/mapmodule/a/a/c;

    .line 1555
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    const-string v3, "DESTINATION_MARKER_TAG"

    invoke-virtual {v1, v3, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1558
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    iget-wide v12, p1, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    invoke-static {v0, v1, v12, v13}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    .line 1559
    invoke-virtual {p1, v4, v3}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    .line 1563
    new-instance v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-direct {v0, v3, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1565
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1567
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1570
    :cond_1
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-nez p1, :cond_13

    .line 1572
    new-instance p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {p1, v3, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1573
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1574
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v11

    .line 1575
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1576
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1573
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object p1

    .line 1578
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    return-void

    .line 1511
    :pswitch_3
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1516
    check-cast p1, Lcab/snapp/mapmodule/a/a/c;

    .line 1518
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1519
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    const-string v3, "ORIGIN_MARKER_TAG"

    invoke-virtual {v1, v3, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1521
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    iget-wide v12, p1, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    invoke-static {v0, v1, v12, v13}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object p1

    .line 1522
    invoke-virtual {p1, v4, v3}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p1

    .line 1526
    new-instance v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-direct {v0, v3, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1528
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1530
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1533
    :cond_2
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-nez p1, :cond_13

    .line 1535
    new-instance p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {p1, v3, v3}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1536
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1537
    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v11

    .line 1538
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1539
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1536
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object p1

    .line 1541
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    return-void

    .line 1938
    :pswitch_4
    check-cast p1, Lcab/snapp/mapmodule/a/a/t;

    .line 1940
    iget-object v0, p1, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    .line 1941
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_13

    .line 1948
    :cond_3
    :try_start_0
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;-><init>()V

    .line 1949
    :goto_0
    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_4

    .line 1951
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p1, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->include(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1953
    :cond_4
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->build()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    .line 1954
    iget v1, p1, Lcab/snapp/mapmodule/a/a/t;->paddingLeft:I

    iget v2, p1, Lcab/snapp/mapmodule/a/a/t;->paddingTop:I

    iget v3, p1, Lcab/snapp/mapmodule/a/a/t;->paddingRight:I

    iget p1, p1, Lcab/snapp/mapmodule/a/a/t;->paddingBottom:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;IIII)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1960
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, p1, v8}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1964
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1459
    :pswitch_5
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1464
    check-cast p1, Lcab/snapp/mapmodule/a/a/b;

    .line 1466
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcab/snapp/mapmodule/a/a/b;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1467
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 1468
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v1

    .line 1469
    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    new-instance v2, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v3, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/Feature;)V

    .line 1473
    iget-object v3, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1476
    iget-object v3, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    iget-object v4, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1479
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    iget-object v3, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1480
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    goto :goto_1

    .line 1484
    :cond_5
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->setGeoJson(Lcom/mapbox/geojson/Feature;)V

    .line 1488
    :goto_1
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1490
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    .line 1491
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v10

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1492
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "center"

    .line 1493
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v9

    .line 1494
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1491
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1497
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->i:Ljava/util/Map;

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1502
    :cond_6
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    new-array v0, v10, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1703
    :pswitch_6
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1707
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 1709
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1710
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1711
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    goto :goto_2

    .line 1714
    :cond_7
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void

    .line 1796
    :pswitch_7
    check-cast p1, Lcab/snapp/mapmodule/a/a/o;

    .line 1798
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/a/o;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/a/o;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iget p1, p1, Lcab/snapp/mapmodule/a/a/o;->zoom:F

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1802
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v1, Lcab/snapp/mapmodule/views/MapBoxView$5;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/views/MapBoxView$5;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {v0, p1, v8, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1872
    :pswitch_8
    check-cast p1, Lcab/snapp/mapmodule/a/a/f;

    .line 1874
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/a/f;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/a/f;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iget p1, p1, Lcab/snapp/mapmodule/a/a/f;->zoom:F

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1880
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, p1, v8}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void

    .line 2056
    :pswitch_9
    :try_start_1
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getLocationComponent()Lcom/mapbox/mapboxsdk/location/LocationComponent;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationComponentEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 2061
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 2045
    :pswitch_a
    :try_start_2
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getLocationComponent()Lcom/mapbox/mapboxsdk/location/LocationComponent;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationComponentEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 2049
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :pswitch_b
    return-void

    .line 2021
    :pswitch_c
    check-cast p1, Lcab/snapp/mapmodule/a/a/k;

    .line 2023
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/k;->markerTag:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz p1, :cond_13

    .line 2027
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v9, [Ljava/lang/Object;

    .line 2028
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v1, 0xfa

    .line 2029
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2030
    new-instance v1, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$5WTXucf-Ru28Fk2sJn0i7XWsLQg;

    invoke-direct {v1, p1}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$5WTXucf-Ru28Fk2sJn0i7XWsLQg;-><init>(Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2031
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1988
    :pswitch_d
    check-cast p1, Lcab/snapp/mapmodule/a/a/l;

    .line 1990
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v0, :cond_13

    .line 1994
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v9, [Ljava/lang/Object;

    .line 1995
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v2, 0xfa

    .line 1996
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1997
    new-instance v2, Lcab/snapp/mapmodule/views/MapBoxView$7;

    invoke-direct {v2, p0, v0}, Lcab/snapp/mapmodule/views/MapBoxView$7;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2005
    new-instance v2, Lcab/snapp/mapmodule/views/MapBoxView$8;

    invoke-direct {v2, p0, v0, p1}, Lcab/snapp/mapmodule/views/MapBoxView$8;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Lcab/snapp/mapmodule/a/a/l;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2015
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1979
    :pswitch_e
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v11, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1981
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto :goto_3

    :cond_8
    return-void

    .line 1971
    :pswitch_f
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v11, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1973
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    goto :goto_4

    :cond_9
    return-void

    .line 1910
    :pswitch_10
    check-cast p1, Lcab/snapp/mapmodule/a/a/s;

    .line 1912
    iget-object v0, p1, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-object v0, p1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    .line 1913
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_13

    .line 1920
    :cond_a
    :try_start_3
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;-><init>()V

    .line 1921
    :goto_5
    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_b

    .line 1923
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p1, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->include(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1925
    :cond_b
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$Builder;->build()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    .line 1926
    iget p1, p1, Lcab/snapp/mapmodule/a/a/s;->padding:I

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngBounds(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;I)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1927
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, p1, v8}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 1931
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1904
    :pswitch_11
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 1905
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1898
    :pswitch_12
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 1899
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1886
    :pswitch_13
    check-cast p1, Lcab/snapp/mapmodule/a/a/r;

    .line 1888
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 1889
    iget v0, p1, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    const/high16 v2, 0x41000000    # 8.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_13

    iget v0, p1, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 1891
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget p1, p1, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1892
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, p1, v8}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void

    .line 1859
    :pswitch_14
    check-cast p1, Lcab/snapp/mapmodule/a/a/e;

    .line 1861
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/a/e;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/a/e;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1866
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0, p1, v8}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->easeCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;I)V

    return-void

    .line 1825
    :pswitch_15
    check-cast p1, Lcab/snapp/mapmodule/a/a/q;

    .line 1832
    iget v0, p1, Lcab/snapp/mapmodule/a/a/q;->y:F

    const v1, 0x47c35000    # 100000.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 1833
    iget p1, p1, Lcab/snapp/mapmodule/a/a/q;->x:F

    div-float/2addr p1, v1

    float-to-double v0, p1

    .line 1834
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 1835
    new-instance v4, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 1837
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1838
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v1, Lcab/snapp/mapmodule/views/MapBoxView$6;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/views/MapBoxView$6;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {v0, p1, v8, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1770
    :pswitch_16
    check-cast p1, Lcab/snapp/mapmodule/a/a/n;

    .line 1772
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/a/n;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/a/n;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1774
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v1, Lcab/snapp/mapmodule/views/MapBoxView$4;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/views/MapBoxView$4;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {v0, p1, v8, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1740
    :pswitch_17
    check-cast p1, Lcab/snapp/mapmodule/a/a/j;

    .line 1742
    iget v0, p1, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    iget v0, p1, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    .line 1744
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/a/j;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/a/j;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    iget p1, p1, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLngZoom(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    .line 1748
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    new-instance v1, Lcab/snapp/mapmodule/views/MapBoxView$3;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/views/MapBoxView$3;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {v0, p1, v8, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->animateCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 1729
    :pswitch_18
    check-cast p1, Lcab/snapp/mapmodule/a/a/i;

    .line 1731
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v0, :cond_13

    new-array v1, v11, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1734
    iget p1, p1, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    aput-object p1, v1, v10

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1719
    :pswitch_19
    check-cast p1, Lcab/snapp/mapmodule/a/a/h;

    .line 1721
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v0, :cond_13

    new-array v1, v11, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1724
    iget p1, p1, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    aput-object p1, v1, v10

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void

    .line 1673
    :pswitch_1a
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1678
    check-cast p1, Lcab/snapp/mapmodule/a/a/p;

    .line 1680
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    if-eqz v0, :cond_c

    .line 1683
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1684
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1685
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    return-void

    .line 1689
    :cond_c
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1692
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 1693
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 1694
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 1622
    :pswitch_1b
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1627
    check-cast p1, Lcab/snapp/mapmodule/a/a/d;

    .line 1630
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcab/snapp/mapmodule/a/a/d;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1631
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1633
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/a/d;->longitude:D

    iget-wide v2, p1, Lcab/snapp/mapmodule/a/a/d;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v0

    .line 1634
    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    const-string v2, "VEHICLE_ID_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/mapbox/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    .line 1638
    new-instance v1, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/FeatureCollection;)V

    .line 1640
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1642
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 1645
    :cond_e
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1647
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    .line 1648
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v10

    iget v2, p1, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    .line 1649
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v11

    iget v2, p1, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    .line 1650
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v9

    .line 1651
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1652
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1653
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1648
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    .line 1655
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1657
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1661
    :cond_f
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v10

    iget v2, p1, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    .line 1662
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconRotate(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v11

    iget v2, p1, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    .line 1663
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v9

    .line 1664
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1665
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1666
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1661
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    .line 1667
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1424
    :pswitch_1c
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1429
    check-cast p1, Lcab/snapp/mapmodule/a/a/a;

    .line 1431
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcab/snapp/mapmodule/a/a/a;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    const-string v2, "ADD_MARKER"

    invoke-virtual {v1, v2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1434
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/a/a;->longitude:D

    iget-wide v2, p1, Lcab/snapp/mapmodule/a/a/a;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/Feature;

    move-result-object v0

    .line 1435
    new-instance v1, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/geojson/Feature;)V

    .line 1437
    iget-object v2, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    iget-object v3, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v2

    if-nez v2, :cond_10

    .line 1439
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->addSource(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    goto :goto_6

    .line 1443
    :cond_10
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/maps/Style;->getSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->setGeoJson(Lcom/mapbox/geojson/Feature;)V

    .line 1446
    :goto_6
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->getLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1448
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v1, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    iget-object v2, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v11, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    const-string v2, "ADD_MARKER"

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->withProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->addLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 1451
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->i:Ljava/util/Map;

    iget-object p1, p1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1420
    :pswitch_1d
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz p1, :cond_13

    .line 2256
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_9

    .line 2261
    :cond_11
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 2263
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 2264
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 2265
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    goto :goto_7

    .line 2267
    :cond_12
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 2269
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeLayer(Lcom/mapbox/mapboxsdk/style/layers/Layer;)Z

    .line 2270
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Style;->removeSource(Ljava/lang/String;)Z

    .line 2271
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/Style;->removeImage(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
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

.method static synthetic a(Lcab/snapp/mapmodule/views/MapBoxView;F)V
    .locals 2

    .line 2386
    iget-object p0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz p0, :cond_0

    float-to-double v0, p1

    .line 2388
    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->zoomBy(D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->moveCamera(Lcom/mapbox/mapboxsdk/camera/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 2

    .line 164
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 165
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapStyleUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;-><init>()V

    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getMapStyleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Style$Builder;->fromUrl(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$Builder;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/views/MapBoxView$1;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/views/MapBoxView$1;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setStyle(Lcom/mapbox/mapboxsdk/maps/Style$Builder;Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;)V

    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->c()V

    .line 180
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->b()V

    .line 181
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->d()V

    return-void
.end method

.method private static synthetic a(Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Landroid/animation/ValueAnimator;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    .line 1030
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method

.method private synthetic a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 7

    .line 112
    new-instance v6, Lcab/snapp/mapmodule/a/b/b;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcab/snapp/mapmodule/a/b/b;-><init>(IDD)V

    .line 113
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcab/snapp/mapmodule/views/MapBoxView;)Ljava/util/Map;
    .locals 0

    .line 70
    iget-object p0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->j:Ljava/util/Map;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/android/a/c/b;->areLocationPermissionsGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getLocationComponent()Lcom/mapbox/mapboxsdk/location/LocationComponent;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getStyle()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;)V

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions$Builder;->build()Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->activateLocationComponent(Lcom/mapbox/mapboxsdk/location/LocationComponentActivationOptions;)V

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setLocationComponentEnabled(Z)V

    const/4 v1, 0x4

    .line 250
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponent;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 350
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcab/snapp/mapmodule/views/MapBoxView$2;

    invoke-direct {v2, p0}, Lcab/snapp/mapmodule/views/MapBoxView$2;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->f:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic c(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->c()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    const v1, 0x800053

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setLogoGravity(I)V

    .line 397
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setMinZoomPreference(D)V

    .line 398
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    const-wide/high16 v1, 0x4032000000000000L    # 18.0

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setMaxZoomPreference(D)V

    .line 400
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->k:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    .line 402
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->l:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V

    .line 404
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->m:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V

    .line 406
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->n:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    .line 408
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v2

    const/16 v3, 0x7dc

    invoke-direct {v1, v2, v3}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->b()V

    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 108
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v1

    const/16 v2, 0x7d4

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 109
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->d()V

    return-void
.end method

.method private synthetic f()V
    .locals 11

    .line 88
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v1

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 89
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 93
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    .line 94
    new-instance v10, Lcab/snapp/mapmodule/a/b/a;

    .line 95
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->getId()I

    move-result v3

    .line 96
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    .line 97
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v6

    iget-wide v8, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    double-to-int v8, v8

    iget-wide v0, v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    double-to-int v9, v0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcab/snapp/mapmodule/a/b/a;-><init>(IDDII)V

    .line 101
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$4N7rV2Y4V8U_jYFHuDOygj4W0XU(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->e()V

    return-void
.end method

.method public static synthetic lambda$5WTXucf-Ru28Fk2sJn0i7XWsLQg(Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$J8a6GLVe-hfcQ7H2wt-eXwAJQ0Q(Lcab/snapp/mapmodule/views/MapBoxView;Lcab/snapp/mapmodule/a/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public static synthetic lambda$MsHL7ScF_f5Bx-isNKuB56WbYZA(Lcab/snapp/mapmodule/views/MapBoxView;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$h6jKlzEwrG-7qZs1f4Vf6y-Vx6o(Lcab/snapp/mapmodule/views/MapBoxView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->a(I)V

    return-void
.end method

.method public static synthetic lambda$hzLYfRBBojbNCS6fggYVRx8c8QU(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->f()V

    return-void
.end method

.method public static synthetic lambda$x0gHZ7gHUaW_mmKU3Qp2wEC-4Oo(Lcab/snapp/mapmodule/views/MapBoxView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 283
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->f:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1313
    :cond_0
    iget v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    goto :goto_0

    .line 1309
    :cond_1
    iget v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    goto :goto_0

    .line 1321
    :cond_2
    iput v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    goto :goto_0

    .line 1317
    :cond_3
    iput v2, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    .line 287
    :goto_0
    iget v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->e:I

    if-le v0, v2, :cond_5

    .line 1334
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_4

    .line 1336
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->f:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 1342
    :cond_5
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-eqz v0, :cond_6

    .line 1344
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 296
    :cond_6
    invoke-super {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method public onAttach(Landroid/os/Bundle;)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcab/snapp/mapmodule/views/MapBoxView;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->onStart()V

    .line 201
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->onResume()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->onPause()V

    .line 210
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->onStop()V

    .line 211
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/MapBoxView;->onDestroy()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 217
    invoke-super {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onDetachedFromWindow()V

    .line 218
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->h:Lio/reactivex/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->h:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    if-nez v0, :cond_1

    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->k:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnCameraIdleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraIdleListener;)V

    .line 228
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->l:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnCameraMoveStartedListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveStartedListener;)V

    .line 230
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->m:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnCameraMoveCancelListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCameraMoveCanceledListener;)V

    .line 232
    iget-object v0, p0, Lcab/snapp/mapmodule/views/MapBoxView;->g:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/MapBoxView;->n:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->removeOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onFinishInflate()V

    .line 162
    :try_start_0
    new-instance v0, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$x0gHZ7gHUaW_mmKU3Qp2wEC-4Oo;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$MapBoxView$x0gHZ7gHUaW_mmKU3Qp2wEC-4Oo;-><init>(Lcab/snapp/mapmodule/views/MapBoxView;)V

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/views/MapBoxView;->getMapAsync(Lcom/mapbox/mapboxsdk/maps/OnMapReadyCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
