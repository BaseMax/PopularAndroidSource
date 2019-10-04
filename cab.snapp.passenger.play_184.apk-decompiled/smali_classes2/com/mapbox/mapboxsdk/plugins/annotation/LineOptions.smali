.class public Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/Options;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Options<",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROPERTY_IS_DRAGGABLE:Ljava/lang/String; = "is-draggable"

.field static final PROPERTY_LINE_BLUR:Ljava/lang/String; = "line-blur"

.field static final PROPERTY_LINE_COLOR:Ljava/lang/String; = "line-color"

.field static final PROPERTY_LINE_GAP_WIDTH:Ljava/lang/String; = "line-gap-width"

.field static final PROPERTY_LINE_JOIN:Ljava/lang/String; = "line-join"

.field static final PROPERTY_LINE_OFFSET:Ljava/lang/String; = "line-offset"

.field static final PROPERTY_LINE_OPACITY:Ljava/lang/String; = "line-opacity"

.field static final PROPERTY_LINE_PATTERN:Ljava/lang/String; = "line-pattern"

.field static final PROPERTY_LINE_WIDTH:Ljava/lang/String; = "line-width"


# instance fields
.field private data:Lcom/google/gson/JsonElement;

.field private geometry:Lcom/mapbox/geojson/LineString;

.field private isDraggable:Z

.field private lineBlur:Ljava/lang/Float;

.field private lineColor:Ljava/lang/String;

.field private lineGapWidth:Ljava/lang/Float;

.field private lineJoin:Ljava/lang/String;

.field private lineOffset:Ljava/lang/Float;

.field private lineOpacity:Ljava/lang/Float;

.field private linePattern:Ljava/lang/String;

.field private lineWidth:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;-><init>()V

    return-void
.end method

.method static fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 3

    .line 359
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 362
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    instance-of v0, v0, Lcom/mapbox/geojson/LineString;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 366
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;-><init>()V

    .line 367
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/LineString;

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    const-string v1, "line-join"

    .line 368
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineJoin:Ljava/lang/String;

    :cond_1
    const-string v1, "line-opacity"

    .line 371
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOpacity:Ljava/lang/Float;

    :cond_2
    const-string v1, "line-color"

    .line 374
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 375
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineColor:Ljava/lang/String;

    :cond_3
    const-string v1, "line-width"

    .line 377
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineWidth:Ljava/lang/Float;

    :cond_4
    const-string v1, "line-gap-width"

    .line 380
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 381
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineGapWidth:Ljava/lang/Float;

    :cond_5
    const-string v1, "line-offset"

    .line 383
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOffset:Ljava/lang/Float;

    :cond_6
    const-string v1, "line-blur"

    .line 386
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 387
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineBlur:Ljava/lang/Float;

    :cond_7
    const-string v1, "line-pattern"

    .line 389
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 390
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->linePattern:Ljava/lang/String;

    :cond_8
    const-string v1, "is-draggable"

    .line 392
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 393
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    iput-boolean p0, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->isDraggable:Z

    :cond_9
    return-object v0

    .line 360
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "geometry field is required"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method bridge synthetic build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Line;

    move-result-object p1

    return-object p1
.end method

.method build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Line;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Line;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    if-eqz v0, :cond_0

    .line 337
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 338
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineJoin:Ljava/lang/String;

    const-string v1, "line-join"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOpacity:Ljava/lang/Float;

    const-string v1, "line-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 340
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineColor:Ljava/lang/String;

    const-string v1, "line-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineWidth:Ljava/lang/Float;

    const-string v1, "line-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 342
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineGapWidth:Ljava/lang/Float;

    const-string v1, "line-gap-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 343
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOffset:Ljava/lang/Float;

    const-string v1, "line-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 344
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineBlur:Ljava/lang/Float;

    const-string v1, "line-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 345
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->linePattern:Ljava/lang/String;

    const-string v1, "line-pattern"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/Line;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/plugins/annotation/Line;-><init>(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/LineString;)V

    .line 347
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->isDraggable:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Line;->setDraggable(Z)V

    .line 348
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Line;->setData(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 335
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getData()Lcom/google/gson/JsonElement;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getDraggable()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->isDraggable:Z

    return v0
.end method

.method public getGeometry()Lcom/mapbox/geojson/LineString;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    return-object v0
.end method

.method public getLatLngs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/geojson/Point;

    .line 266
    new-instance v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v2}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLineBlur()Ljava/lang/Float;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineBlur:Ljava/lang/Float;

    return-object v0
.end method

.method public getLineColor()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLineGapWidth()Ljava/lang/Float;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineGapWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getLineJoin()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineJoin:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOffset()Ljava/lang/Float;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOffset:Ljava/lang/Float;

    return-object v0
.end method

.method public getLineOpacity()Ljava/lang/Float;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getLinePattern()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->linePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getLineWidth()Ljava/lang/Float;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public withData(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->data:Lcom/google/gson/JsonElement;

    return-object p0
.end method

.method public withDraggable(Z)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->isDraggable:Z

    return-object p0
.end method

.method public withGeometry(Lcom/mapbox/geojson/LineString;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    return-object p0
.end method

.method public withLatLngs(Ljava/util/List;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 251
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {v0}, Lcom/mapbox/geojson/LineString;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/LineString;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->geometry:Lcom/mapbox/geojson/LineString;

    return-object p0
.end method

.method public withLineBlur(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineBlur:Ljava/lang/Float;

    return-object p0
.end method

.method public withLineColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineColor:Ljava/lang/String;

    return-object p0
.end method

.method public withLineGapWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineGapWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public withLineJoin(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineJoin:Ljava/lang/String;

    return-object p0
.end method

.method public withLineOffset(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOffset:Ljava/lang/Float;

    return-object p0
.end method

.method public withLineOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineOpacity:Ljava/lang/Float;

    return-object p0
.end method

.method public withLinePattern(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->linePattern:Ljava/lang/String;

    return-object p0
.end method

.method public withLineWidth(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/LineOptions;->lineWidth:Ljava/lang/Float;

    return-object p0
.end method
