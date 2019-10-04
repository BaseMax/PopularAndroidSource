.class public Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
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

    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public withBuffer(I)Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
    .locals 1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "buffer"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withClip(Z)Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
    .locals 1

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "clip"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withMaxZoom(I)Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
    .locals 1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "maxzoom"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withMinZoom(I)Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
    .locals 1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "minzoom"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withTolerance(F)Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
    .locals 1

    .line 82
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "tolerance"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withWrap(Z)Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;
    .locals 1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "wrap"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/mapboxsdk/style/sources/CustomGeometrySourceOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
