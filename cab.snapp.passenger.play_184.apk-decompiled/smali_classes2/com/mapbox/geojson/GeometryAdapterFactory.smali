.class public abstract Lcom/mapbox/geojson/GeometryAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/r;


# static fields
.field private static geometryTypeFactory:Lcom/google/gson/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/gson/r;
    .locals 3

    .line 28
    sget-object v0, Lcom/mapbox/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lcom/google/gson/r;

    if-nez v0, :cond_0

    .line 29
    const-class v0, Lcom/mapbox/geojson/Geometry;

    const/4 v1, 0x1

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;Z)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/GeometryCollection;

    const-string v2, "GeometryCollection"

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/Point;

    const-string v2, "Point"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/MultiPoint;

    const-string v2, "MultiPoint"

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/LineString;

    const-string v2, "LineString"

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/MultiLineString;

    const-string v2, "MultiLineString"

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/Polygon;

    const-string v2, "Polygon"

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/mapbox/geojson/MultiPolygon;

    const-string v2, "MultiPolygon"

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/mapbox/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lcom/google/gson/r;

    .line 38
    :cond_0
    sget-object v0, Lcom/mapbox/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lcom/google/gson/r;

    return-object v0
.end method
