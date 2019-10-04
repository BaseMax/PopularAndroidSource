.class public final Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory$GeoJsonAdapterFactoryIml;
.super Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoJsonAdapterFactoryIml"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mapbox/geojson/gson/GeoJsonAdapterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a<",
            "TT;>;)",
            "Lcom/google/gson/q<",
            "TT;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lcom/google/gson/b/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    .line 50
    const-class v0, Lcom/mapbox/geojson/BoundingBox;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p1}, Lcom/mapbox/geojson/BoundingBox;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    const-class v0, Lcom/mapbox/geojson/Feature;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p1}, Lcom/mapbox/geojson/Feature;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    const-class v0, Lcom/mapbox/geojson/FeatureCollection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {p1}, Lcom/mapbox/geojson/FeatureCollection;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 56
    :cond_2
    const-class v0, Lcom/mapbox/geojson/GeometryCollection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {p1}, Lcom/mapbox/geojson/GeometryCollection;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    const-class v0, Lcom/mapbox/geojson/LineString;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-static {p1}, Lcom/mapbox/geojson/LineString;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 60
    :cond_4
    const-class v0, Lcom/mapbox/geojson/MultiLineString;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    invoke-static {p1}, Lcom/mapbox/geojson/MultiLineString;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 62
    :cond_5
    const-class v0, Lcom/mapbox/geojson/MultiPoint;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-static {p1}, Lcom/mapbox/geojson/MultiPoint;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 64
    :cond_6
    const-class v0, Lcom/mapbox/geojson/MultiPolygon;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 65
    invoke-static {p1}, Lcom/mapbox/geojson/MultiPolygon;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 66
    :cond_7
    const-class v0, Lcom/mapbox/geojson/Polygon;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    invoke-static {p1}, Lcom/mapbox/geojson/Polygon;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    .line 68
    :cond_8
    const-class v0, Lcom/mapbox/geojson/Point;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 69
    invoke-static {p1}, Lcom/mapbox/geojson/Point;->typeAdapter(Lcom/google/gson/e;)Lcom/google/gson/q;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
