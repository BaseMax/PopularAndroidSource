.class public Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
.super Lcom/mapbox/mapboxsdk/plugins/annotation/Options;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Options<",
        "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;",
        ">;"
    }
.end annotation


# static fields
.field static final PROPERTY_FILL_COLOR:Ljava/lang/String; = "fill-color"

.field static final PROPERTY_FILL_OPACITY:Ljava/lang/String; = "fill-opacity"

.field static final PROPERTY_FILL_OUTLINE_COLOR:Ljava/lang/String; = "fill-outline-color"

.field static final PROPERTY_FILL_PATTERN:Ljava/lang/String; = "fill-pattern"

.field private static final PROPERTY_IS_DRAGGABLE:Ljava/lang/String; = "is-draggable"


# instance fields
.field private data:Lcom/google/gson/JsonElement;

.field private fillColor:Ljava/lang/String;

.field private fillOpacity:Ljava/lang/Float;

.field private fillOutlineColor:Ljava/lang/String;

.field private fillPattern:Ljava/lang/String;

.field private geometry:Lcom/mapbox/geojson/Polygon;

.field private isDraggable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/plugins/annotation/Options;-><init>()V

    return-void
.end method

.method static fromFeature(Lcom/mapbox/geojson/Feature;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 3

    .line 259
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 262
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v0

    instance-of v0, v0, Lcom/mapbox/geojson/Polygon;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;-><init>()V

    .line 266
    invoke-virtual {p0}, Lcom/mapbox/geojson/Feature;->geometry()Lcom/mapbox/geojson/Geometry;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/Polygon;

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    const-string v1, "fill-opacity"

    .line 267
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOpacity:Ljava/lang/Float;

    :cond_1
    const-string v1, "fill-color"

    .line 270
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillColor:Ljava/lang/String;

    :cond_2
    const-string v1, "fill-outline-color"

    .line 273
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOutlineColor:Ljava/lang/String;

    :cond_3
    const-string v1, "fill-pattern"

    .line 276
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillPattern:Ljava/lang/String;

    :cond_4
    const-string v1, "is-draggable"

    .line 279
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 280
    invoke-virtual {p0, v1}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    iput-boolean p0, v0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->isDraggable:Z

    :cond_5
    return-object v0

    .line 260
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "geometry field is required"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method bridge synthetic build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;

    move-result-object p1

    return-object p1
.end method

.method build(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;)Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager<",
            "*",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    if-eqz v0, :cond_0

    .line 241
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 242
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOpacity:Ljava/lang/Float;

    const-string v1, "fill-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 243
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillColor:Ljava/lang/String;

    const-string v1, "fill-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOutlineColor:Ljava/lang/String;

    const-string v1, "fill-outline-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillPattern:Ljava/lang/String;

    const-string v1, "fill-pattern"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;-><init>(JLcom/mapbox/mapboxsdk/plugins/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Polygon;)V

    .line 247
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->isDraggable:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;->setDraggable(Z)V

    .line 248
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/Fill;->setData(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getData()Lcom/google/gson/JsonElement;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getDraggable()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->isDraggable:Z

    return v0
.end method

.method public getFillColor()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFillOpacity()Ljava/lang/Float;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public getFillOutlineColor()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOutlineColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFillPattern()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometry()Lcom/mapbox/geojson/Polygon;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    return-object v0
.end method

.method public getLatLngs()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v1}, Lcom/mapbox/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/geojson/Point;

    .line 168
    new-instance v5, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v4}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public withData(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->data:Lcom/google/gson/JsonElement;

    return-object p0
.end method

.method public withDraggable(Z)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->isDraggable:Z

    return-object p0
.end method

.method public withFillColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillColor:Ljava/lang/String;

    return-object p0
.end method

.method public withFillOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOpacity:Ljava/lang/Float;

    return-object p0
.end method

.method public withFillOutlineColor(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillOutlineColor:Ljava/lang/String;

    return-object p0
.end method

.method public withFillPattern(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->fillPattern:Ljava/lang/String;

    return-object p0
.end method

.method public withGeometry(Lcom/mapbox/geojson/Polygon;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    return-object p0
.end method

.method public withLatLngs(Ljava/util/List;)Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;)",
            "Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 149
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {v0}, Lcom/mapbox/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/FillOptions;->geometry:Lcom/mapbox/geojson/Polygon;

    return-object p0
.end method
