.class public Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public withBuffer(I)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "buffer"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withCluster(Z)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "cluster"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withClusterMaxZoom(I)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "clusterMaxZoom"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withClusterRadius(I)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "clusterRadius"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withLineMetrics(Z)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lineMetrics"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withMaxZoom(I)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "maxzoom"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withMinZoom(I)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "minzoom"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withTolerance(F)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;
    .locals 1

    .line 72
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "tolerance"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
