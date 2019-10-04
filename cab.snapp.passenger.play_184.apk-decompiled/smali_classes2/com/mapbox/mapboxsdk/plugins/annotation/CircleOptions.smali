.class public Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/Options;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Options<",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;",
        ">;"
    }
.end annotation


# static fields
.field static final PROPERTY_CIRCLE_BLUR:Ljava/lang/String; = "circle-blur"

.field static final PROPERTY_CIRCLE_COLOR:Ljava/lang/String; = "circle-color"

.field static final PROPERTY_CIRCLE_OPACITY:Ljava/lang/String; = "circle-opacity"

.field static final PROPERTY_CIRCLE_RADIUS:Ljava/lang/String; = "circle-radius"

.field static final PROPERTY_CIRCLE_STROKE_COLOR:Ljava/lang/String; = "circle-stroke-color"

.field static final PROPERTY_CIRCLE_STROKE_OPACITY:Ljava/lang/String; = "circle-stroke-opacity"

.field static final PROPERTY_CIRCLE_STROKE_WIDTH:Ljava/lang/String; = "circle-stroke-width"

.field private static final PROPERTY_IS_DRAGGABLE:Ljava/lang/String; = "is-draggable"


# instance fields
.field private circleBlur:Ljava/lang/Float;

.field private circleColor:Ljava/lang/String;

.field private circleOpacity:Ljava/lang/Float;

.field private circleRadius:Ljava/lang/Float;

.field private circleStrokeColor:Ljava/lang/String;

.field private circleStrokeOpacity:Ljava/lang/Float;

.field private circleStrokeWidth:Ljava/lang/Float;

.field private data:Lcom/google/gson/JsonElement;

.field private geometry:Lcom/mapbox/geojson/Point;

.field private isDraggable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;-><init>()V

    return-void
.end method

.method static fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 328
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    instance-of v0, v0, Lcom/mapbox/geojson/Point;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 332
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;-><init>()V

    .line 333
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/Point;

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    const-string v1, "circle-radius"

    .line 334
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleRadius:Ljava/lang/Float;

    :cond_1
    const-string v1, "circle-color"

    .line 337
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleColor:Ljava/lang/String;

    :cond_2
    const-string v1, "circle-blur"

    .line 340
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleBlur:Ljava/lang/Float;

    :cond_3
    const-string v1, "circle-opacity"

    .line 343
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleOpacity:Ljava/lang/Float;

    :cond_4
    const-string v1, "circle-stroke-width"

    .line 346
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeWidth:Ljava/lang/Float;

    :cond_5
    const-string v1, "circle-stroke-color"

    .line 349
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 350
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeColor:Ljava/lang/String;

    :cond_6
    const-string v1, "circle-stroke-opacity"

    .line 352
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeOpacity:Ljava/lang/Float;

    :cond_7
    const-string v1, "is-draggable"

    .line 355
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 356
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    iput-boolean p0, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->isDraggable:Z

    :cond_8
    return-object v0

    .line 326
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "geometry field is required"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method bridge synthetic build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;

    move-result-object p1

    return-object p1
.end method

.method build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    if-eqz v0, :cond_0

    .line 304
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleRadius:Ljava/lang/Float;

    const-string v1, "circle-radius"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 306
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleColor:Ljava/lang/String;

    const-string v1, "circle-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleBlur:Ljava/lang/Float;

    const-string v1, "circle-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 308
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleOpacity:Ljava/lang/Float;

    const-string v1, "circle-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 309
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeWidth:Ljava/lang/Float;

    const-string v1, "circle-stroke-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 310
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeColor:Ljava/lang/String;

    const-string v1, "circle-stroke-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeOpacity:Ljava/lang/Float;

    const-string v1, "circle-stroke-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 312
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;-><init>(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V

    .line 313
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->isDraggable:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->setDraggable(Z)V

    .line 314
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Circle;->setData(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCircleBlur()Ljava/lang/Float;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleBlur:Ljava/lang/Float;

    return-object v0
.end method

.method public getCircleColor()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleOpacity()Ljava/lang/Float;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getCircleRadius()Ljava/lang/Float;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleRadius:Ljava/lang/Float;

    return-object v0
.end method

.method public getCircleStrokeColor()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleStrokeOpacity()Ljava/lang/Float;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getCircleStrokeWidth()Ljava/lang/Float;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getData()Lcom/google/gson/JsonElement;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getDraggable()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->isDraggable:Z

    return v0
.end method

.method public getGeometry()Lcom/mapbox/geojson/Point;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    return-object v0
.end method

.method public getLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public withCircleBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleBlur:Ljava/lang/Float;

    return-object p0
.end method

.method public withCircleColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleColor:Ljava/lang/String;

    return-object p0
.end method

.method public withCircleOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleOpacity:Ljava/lang/Float;

    return-object p0
.end method

.method public withCircleRadius(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public withCircleStrokeColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeColor:Ljava/lang/String;

    return-object p0
.end method

.method public withCircleStrokeOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeOpacity:Ljava/lang/Float;

    return-object p0
.end method

.method public withCircleStrokeWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->circleStrokeWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public withData(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->data:Lcom/google/gson/JsonElement;

    return-object p0
.end method

.method public withDraggable(Z)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->isDraggable:Z

    return-object p0
.end method

.method public withGeometry(Lcom/mapbox/geojson/Point;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    return-object p0
.end method

.method public withLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;
    .locals 4

    .line 223
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/CircleOptions;->geometry:Lcom/mapbox/geojson/Point;

    return-object p0
.end method
