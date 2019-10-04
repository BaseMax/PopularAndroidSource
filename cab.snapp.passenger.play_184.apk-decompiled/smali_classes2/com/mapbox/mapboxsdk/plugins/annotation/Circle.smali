.class public Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;
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
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;",
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
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;",
            "****>;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/mapbox/geojson/Point;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;-><init>(JLcom/google/gson/JsonObject;Lcom/mapbox/geojson/Geometry;)V

    .line 41
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    return-void
.end method


# virtual methods
.method public getCircleBlur()Ljava/lang/Float;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getCircleColor()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCircleColorAsInt()I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCircleOpacity()Ljava/lang/Float;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getCircleRadius()Ljava/lang/Float;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-radius"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getCircleStrokeColor()Ljava/lang/String;
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCircleStrokeColorAsInt()I
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCircleStrokeOpacity()Ljava/lang/Float;
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getCircleStrokeWidth()Ljava/lang/Float;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-width"

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

    .line 88
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->geometry:Lcom/mapbox/geojson/Geometry;

    check-cast v1, Lcom/mapbox/geojson/Point;

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->geometry:Lcom/mapbox/geojson/Geometry;

    check-cast v3, Lcom/mapbox/geojson/Point;

    invoke-virtual {v3}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Circle"

    return-object v0
.end method

.method getOffsetGeometry(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/android/b/c;FF)Lcom/mapbox/geojson/Geometry;
    .locals 2

    .line 342
    new-instance v0, Landroid/graphics/PointF;

    .line 343
    invoke-virtual {p2}, Lcom/mapbox/android/b/c;->getCurrentX()F

    move-result v1

    sub-float/2addr v1, p3

    .line 344
    invoke-virtual {p2}, Lcom/mapbox/android/b/c;->getCurrentY()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 347
    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    .line 348
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

    .line 352
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

.method public setCircleBlur(Ljava/lang/Float;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-blur"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "circle-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCircleColor(Ljava/lang/String;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCircleOpacity(Ljava/lang/Float;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setCircleRadius(Ljava/lang/Float;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-radius"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setCircleStrokeColor(I)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCircleStrokeColor(Ljava/lang/String;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCircleStrokeOpacity(Ljava/lang/Float;)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setCircleStrokeWidth(Ljava/lang/Float;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-width"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4

    .line 78
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->geometry:Lcom/mapbox/geojson/Geometry;

    return-void
.end method

.method setUsedDataDrivenProperties()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-radius"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-blur"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->jsonObject:Lcom/google/gson/JsonObject;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/k;

    if-nez v0, :cond_6

    .line 65
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->annotationManager:Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;->enableDataDrivenProperty(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
