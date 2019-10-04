.class public Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation<",
        "Lcom/mapbox/geojson/Point;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
            "****>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;",
            "****>;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/mapbox/geojson/Point;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;-><init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V

    .line 41
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    return-void
.end method


# virtual methods
.method public getIconAnchor()Ljava/lang/String;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-anchor"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconColor()Ljava/lang/String;
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconColorAsInt()I
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconHaloBlur()Ljava/lang/Float;
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIconHaloColor()Ljava/lang/String;
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconHaloColorAsInt()I
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconHaloWidth()Ljava/lang/Float;
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIconImage()Ljava/lang/String;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-image"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconOffset()Landroid/graphics/PointF;
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public getIconOpacity()Ljava/lang/Float;
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIconRotate()Ljava/lang/Float;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-rotate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIconSize()Ljava/lang/Float;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 5

    .line 148
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->geometry:Lcom/mapbox/geojson/Geometry;

    check-cast v1, Lcom/mapbox/geojson/Point;

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->geometry:Lcom/mapbox/geojson/Geometry;

    check-cast v3, Lcom/mapbox/geojson/Point;

    invoke-virtual {v3}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Symbol"

    return-object v0
.end method

.method getOffsetGeometry(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/android/b/c;FF)Lcom/mapbox/geojson/Geometry;
    .locals 2

    .line 1015
    new-instance v0, Landroid/graphics/PointF;

    .line 1016
    invoke-virtual {p2}, Lcom/mapbox/android/b/c;->getCurrentX()F

    move-result v1

    sub-float/2addr v1, p3

    .line 1017
    invoke-virtual {p2}, Lcom/mapbox/android/b/c;->getCurrentY()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1020
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    .line 1021
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide p2

    const-wide v0, 0x40554345b1a549d6L    # 85.05112877980659

    cmpl-double p4, p2, v0

    if-gtz p4, :cond_1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide p2

    const-wide v0, -0x3faabcba4e5ab62aL    # -85.05112877980659

    cmpg-double p4, p2, v0

    if-gez p4, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide p2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSymbolSortKey()Ljava/lang/Float;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextAnchor()Ljava/lang/String;
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-anchor"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColorAsInt()I
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTextField()Ljava/lang/String;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-field"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextFont()[Ljava/lang/String;
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-font"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 357
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 358
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTextHaloBlur()Ljava/lang/Float;
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextHaloColor()Ljava/lang/String;
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextHaloColorAsInt()I
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTextHaloWidth()Ljava/lang/Float;
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextJustify()Ljava/lang/String;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-justify"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextLetterSpacing()Ljava/lang/Float;
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextMaxWidth()Ljava/lang/Float;
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-max-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextOffset()Landroid/graphics/PointF;
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public getTextOpacity()Ljava/lang/Float;
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextRadialOffset()Ljava/lang/Float;
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-radial-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextRotate()Ljava/lang/Float;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-rotate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()Ljava/lang/Float;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextTransform()Ljava/lang/String;
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIconAnchor(Ljava/lang/String;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-anchor"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconColor(I)V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "icon-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconColor(Ljava/lang/String;)V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconHaloBlur(Ljava/lang/Float;)V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setIconHaloColor(I)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconHaloColor(Ljava/lang/String;)V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconHaloWidth(Ljava/lang/Float;)V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setIconImage(Ljava/lang/String;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-image"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconOffset(Landroid/graphics/PointF;)V
    .locals 2

    .line 286
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 287
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 288
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 289
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-offset"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public setIconOpacity(Ljava/lang/Float;)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setIconRotate(Ljava/lang/Float;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-rotate"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setIconSize(Ljava/lang/Float;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-size"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4

    .line 138
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->geometry:Lcom/mapbox/geojson/Geometry;

    return-void
.end method

.method public setSymbolSortKey(Ljava/lang/Float;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextAnchor(Ljava/lang/String;)V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-anchor"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextField(Ljava/lang/String;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-field"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextFont([Ljava/lang/String;)V
    .locals 4

    .line 375
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 376
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 377
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-font"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public setTextHaloBlur(Ljava/lang/Float;)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextHaloColor(I)V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextHaloColor(Ljava/lang/String;)V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextHaloWidth(Ljava/lang/Float;)V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextJustify(Ljava/lang/String;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-justify"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextLetterSpacing(Ljava/lang/Float;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextMaxWidth(Ljava/lang/Float;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-max-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextOffset(Landroid/graphics/PointF;)V
    .locals 2

    .line 623
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 624
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 625
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 626
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-offset"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public setTextOpacity(Ljava/lang/Float;)V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextRadialOffset(Ljava/lang/Float;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-radial-offset"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextRotate(Ljava/lang/Float;)V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-rotate"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextSize(Ljava/lang/Float;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-size"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setTextTransform(Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setUsedDataDrivenProperties()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "symbol-sort-key"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-image"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-rotate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-anchor"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-field"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_6

    .line 65
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-font"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-size"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_8

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-max-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-letter-spacing"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-justify"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_b

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 82
    :cond_b
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-radial-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_c

    .line 83
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 85
    :cond_c
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-anchor"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 88
    :cond_d
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-rotate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_e

    .line 89
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 91
    :cond_e
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-transform"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 94
    :cond_f
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-offset"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_10

    .line 95
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-offset"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 97
    :cond_10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_11

    .line 98
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "icon-opacity"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 100
    :cond_11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_12

    .line 101
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "icon-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 103
    :cond_12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_13

    .line 104
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "icon-halo-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 106
    :cond_13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_14

    .line 107
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "icon-halo-width"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 109
    :cond_14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_15

    .line 110
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "icon-halo-blur"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 112
    :cond_15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_16

    .line 113
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-opacity"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 115
    :cond_16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_17

    .line 116
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 118
    :cond_17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_18

    .line 119
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-halo-color"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 121
    :cond_18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_19

    .line 122
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-halo-width"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 124
    :cond_19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_1a

    .line 125
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Symbol;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    const-string v1, "text-halo-blur"

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method
