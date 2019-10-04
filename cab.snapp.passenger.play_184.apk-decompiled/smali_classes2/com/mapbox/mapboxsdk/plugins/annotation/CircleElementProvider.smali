.class Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/CoreElementProvider<",
        "Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final ID_GEOJSON_LAYER:Ljava/lang/String; = "mapbox-android-circle-layer-%s"

.field private static final ID_GEOJSON_SOURCE:Ljava/lang/String; = "mapbox-android-circle-source-%s"


# instance fields
.field private final layerId:Ljava/lang/String;

.field private final sourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "mapbox-android-circle-layer-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->layerId:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "mapbox-android-circle-source-%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->sourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLayer()Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;
    .locals 3

    .line 37
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->layerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->sourceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getLayer()Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->getLayer()Lcom/mapbox/mapboxsdk/style/layers/CircleLayer;

    move-result-object v0

    return-object v0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->layerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource(Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;
    .locals 2

    .line 42
    new-instance v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleElementProvider;->sourceId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;)V

    return-object v0
.end method
