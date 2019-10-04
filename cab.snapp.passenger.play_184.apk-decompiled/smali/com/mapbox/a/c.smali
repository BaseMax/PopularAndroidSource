.class public final Lcom/mapbox/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No Instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/geojson/Point;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 209
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 210
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/geojson/Point;

    .line 211
    invoke-static {v0, v4, p1}, Lcom/mapbox/a/c;->distance(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static a(Ljava/util/List;)[D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;)[D"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 377
    fill-array-data v0, :array_0

    .line 384
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/Point;

    const/4 v2, 0x0

    .line 385
    aget-wide v3, v0, v2

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v3

    aput-wide v3, v0, v2

    :cond_1
    const/4 v2, 0x1

    .line 388
    aget-wide v3, v0, v2

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    .line 389
    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v3

    aput-wide v3, v0, v2

    :cond_2
    const/4 v2, 0x2

    .line 391
    aget-wide v3, v0, v2

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_3

    .line 392
    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v3

    aput-wide v3, v0, v2

    :cond_3
    const/4 v2, 0x3

    .line 394
    aget-wide v3, v0, v2

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    .line 395
    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_0

    :cond_4
    return-object v0

    :array_0
    .array-data 8
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
    .end array-data
.end method

.method public static along(Lcom/mapbox/geojson/LineString;DLjava/lang/String;)Lcom/mapbox/geojson/Point;
    .locals 12

    .line 246
    invoke-virtual {p0}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    .line 249
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3

    :cond_0
    cmpl-double v5, v3, p1

    if-ltz v5, :cond_2

    sub-double v7, p1, v3

    cmpl-double p1, v7, v0

    if-nez p1, :cond_1

    .line 255
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/geojson/Point;

    return-object p0

    .line 257
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/geojson/Point;

    add-int/lit8 p2, v2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mapbox/geojson/Point;

    invoke-static {p1, p2}, Lcom/mapbox/a/c;->bearing(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    sub-double v9, p1, v0

    .line 258
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/mapbox/geojson/Point;

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Lcom/mapbox/a/c;->destination(Lcom/mapbox/geojson/Point;DDLjava/lang/String;)Lcom/mapbox/geojson/Point;

    move-result-object p0

    return-object p0

    .line 261
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/geojson/Point;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mapbox/geojson/Point;

    invoke-static {v5, v6, p3}, Lcom/mapbox/a/c;->distance(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    goto :goto_0

    .line 265
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/geojson/Point;

    return-object p0
.end method

.method public static bbox(Lcom/mapbox/geojson/Geometry;)[D
    .locals 8

    .line 348
    instance-of v0, p0, Lcom/mapbox/geojson/Point;

    if-eqz v0, :cond_0

    .line 349
    check-cast p0, Lcom/mapbox/geojson/Point;

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/Point;)[D

    move-result-object p0

    return-object p0

    .line 350
    :cond_0
    instance-of v0, p0, Lcom/mapbox/geojson/MultiPoint;

    if-eqz v0, :cond_1

    .line 351
    check-cast p0, Lcom/mapbox/geojson/MultiPoint;

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/MultiPoint;)[D

    move-result-object p0

    return-object p0

    .line 352
    :cond_1
    instance-of v0, p0, Lcom/mapbox/geojson/LineString;

    if-eqz v0, :cond_2

    .line 353
    check-cast p0, Lcom/mapbox/geojson/LineString;

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/LineString;)[D

    move-result-object p0

    return-object p0

    .line 354
    :cond_2
    instance-of v0, p0, Lcom/mapbox/geojson/MultiLineString;

    if-eqz v0, :cond_3

    .line 355
    check-cast p0, Lcom/mapbox/geojson/MultiLineString;

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/MultiLineString;)[D

    move-result-object p0

    return-object p0

    .line 356
    :cond_3
    instance-of v0, p0, Lcom/mapbox/geojson/Polygon;

    if-eqz v0, :cond_4

    .line 357
    check-cast p0, Lcom/mapbox/geojson/Polygon;

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/Polygon;)[D

    move-result-object p0

    return-object p0

    .line 358
    :cond_4
    instance-of v0, p0, Lcom/mapbox/geojson/MultiPolygon;

    if-eqz v0, :cond_5

    .line 359
    check-cast p0, Lcom/mapbox/geojson/MultiPolygon;

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/MultiPolygon;)[D

    move-result-object p0

    return-object p0

    .line 360
    :cond_5
    instance-of v0, p0, Lcom/mapbox/geojson/GeometryCollection;

    if-eqz v0, :cond_7

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    check-cast p0, Lcom/mapbox/geojson/GeometryCollection;

    invoke-virtual {p0}, Lcom/mapbox/geojson/GeometryCollection;->geometries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/geojson/Geometry;

    .line 364
    invoke-static {v1}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/Geometry;)[D

    move-result-object v1

    const/4 v2, 0x0

    .line 365
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    invoke-static {v3, v4, v6, v7}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 366
    aget-wide v6, v1, v3

    aget-wide v4, v1, v5

    invoke-static {v6, v7, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    aget-wide v3, v1, v3

    const/4 v5, 0x3

    aget-wide v6, v1, v5

    invoke-static {v3, v4, v6, v7}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    aget-wide v2, v1, v2

    aget-wide v4, v1, v5

    invoke-static {v2, v3, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_6
    invoke-static {v0}, Lcom/mapbox/geojson/MultiPoint;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/MultiPoint;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/a/c;->bbox(Lcom/mapbox/geojson/MultiPoint;)[D

    move-result-object p0

    return-object p0

    .line 372
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown geometry class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static bbox(Lcom/mapbox/geojson/LineString;)[D
    .locals 0

    .line 288
    invoke-static {p0}, Lcom/mapbox/a/d;->coordAll(Lcom/mapbox/geojson/LineString;)Ljava/util/List;

    move-result-object p0

    .line 289
    invoke-static {p0}, Lcom/mapbox/a/c;->a(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lcom/mapbox/geojson/MultiLineString;)[D
    .locals 0

    .line 324
    invoke-static {p0}, Lcom/mapbox/a/d;->coordAll(Lcom/mapbox/geojson/MultiLineString;)Ljava/util/List;

    move-result-object p0

    .line 325
    invoke-static {p0}, Lcom/mapbox/a/c;->a(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lcom/mapbox/geojson/MultiPoint;)[D
    .locals 0

    .line 300
    invoke-static {p0}, Lcom/mapbox/a/d;->coordAll(Lcom/mapbox/geojson/MultiPoint;)Ljava/util/List;

    move-result-object p0

    .line 301
    invoke-static {p0}, Lcom/mapbox/a/c;->a(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lcom/mapbox/geojson/MultiPolygon;)[D
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-static {p0, v0}, Lcom/mapbox/a/d;->coordAll(Lcom/mapbox/geojson/MultiPolygon;Z)Ljava/util/List;

    move-result-object p0

    .line 337
    invoke-static {p0}, Lcom/mapbox/a/c;->a(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lcom/mapbox/geojson/Point;)[D
    .locals 0

    .line 276
    invoke-static {p0}, Lcom/mapbox/a/d;->coordAll(Lcom/mapbox/geojson/Point;)Ljava/util/List;

    move-result-object p0

    .line 277
    invoke-static {p0}, Lcom/mapbox/a/c;->a(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lcom/mapbox/geojson/Polygon;)[D
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, v0}, Lcom/mapbox/a/d;->coordAll(Lcom/mapbox/geojson/Polygon;Z)Ljava/util/List;

    move-result-object p0

    .line 313
    invoke-static {p0}, Lcom/mapbox/a/c;->a(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bboxPolygon(Lcom/mapbox/geojson/BoundingBox;)Lcom/mapbox/geojson/Polygon;
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mapbox/geojson/Point;

    .line 436
    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->west()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->south()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 437
    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->east()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->south()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    aput-object v3, v2, v0

    .line 438
    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->east()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->north()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 439
    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->west()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->north()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 440
    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->west()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/mapbox/geojson/BoundingBox;->south()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p0

    const/4 v0, 0x4

    aput-object p0, v2, v0

    .line 435
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    aput-object p0, v1, v4

    .line 434
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 433
    invoke-static {p0}, Lcom/mapbox/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p0

    return-object p0
.end method

.method public static bearing(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;)D
    .locals 10

    .line 47
    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v0

    .line 48
    invoke-virtual {p1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v2

    .line 49
    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v4

    .line 50
    invoke-virtual {p1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide p0

    sub-double/2addr v2, v0

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    sub-double/2addr v6, v4

    .line 55
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/a/a;->radiansToDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static destination(Lcom/mapbox/geojson/Point;DDLjava/lang/String;)Lcom/mapbox/geojson/Point;
    .locals 10

    .line 76
    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v0

    .line 77
    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v2

    .line 78
    invoke-static {p3, p4}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide p3

    .line 80
    invoke-static {p1, p2, p5}, Lcom/mapbox/a/a;->lengthToRadians(DLjava/lang/String;)D

    move-result-wide p0

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    .line 84
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    .line 85
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p4, p4, v2

    sub-double/2addr p0, p4

    .line 84
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 89
    invoke-static {v0, v1}, Lcom/mapbox/a/a;->radiansToDegrees(D)D

    move-result-wide p0

    invoke-static {v4, v5}, Lcom/mapbox/a/a;->radiansToDegrees(D)D

    move-result-wide p2

    .line 88
    invoke-static {p0, p1, p2, p3}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method public static distance(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;)D
    .locals 1

    const-string v0, "kilometers"

    .line 103
    invoke-static {p0, p1, v0}, Lcom/mapbox/a/c;->distance(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distance(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;Ljava/lang/String;)D
    .locals 8

    .line 119
    invoke-virtual {p1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v0

    .line 120
    invoke-virtual {p1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v2

    .line 121
    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide v4

    .line 122
    invoke-virtual {p1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/a/a;->degreesToRadians(D)D

    move-result-wide p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v2, v6

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p0, p0, v6

    .line 127
    invoke-static {p0, p1, p2}, Lcom/mapbox/a/a;->radiansToLength(DLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static length(Lcom/mapbox/geojson/LineString;Ljava/lang/String;)D
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/mapbox/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    .line 143
    invoke-static {p0, p1}, Lcom/mapbox/a/c;->a(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static length(Lcom/mapbox/geojson/MultiLineString;Ljava/lang/String;)D
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/mapbox/geojson/MultiLineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 159
    invoke-static {v2, p1}, Lcom/mapbox/a/c;->a(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static length(Lcom/mapbox/geojson/MultiPolygon;Ljava/lang/String;)D
    .locals 5

    .line 196
    invoke-virtual {p0}, Lcom/mapbox/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    move-result-object p0

    .line 197
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 198
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 199
    invoke-static {v3, p1}, Lcom/mapbox/a/c;->a(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v0, v3

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static length(Lcom/mapbox/geojson/Polygon;Ljava/lang/String;)D
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/mapbox/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 178
    invoke-static {v2, p1}, Lcom/mapbox/a/c;->a(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static midpoint(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;)Lcom/mapbox/geojson/Point;
    .locals 8

    const-string v0, "miles"

    .line 228
    invoke-static {p0, p1, v0}, Lcom/mapbox/a/c;->distance(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;Ljava/lang/String;)D

    move-result-wide v0

    .line 229
    invoke-static {p0, p1}, Lcom/mapbox/a/c;->bearing(Lcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;)D

    move-result-wide v5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v3, v0, v2

    const-string v7, "miles"

    move-object v2, p0

    .line 230
    invoke-static/range {v2 .. v7}, Lcom/mapbox/a/c;->destination(Lcom/mapbox/geojson/Point;DDLjava/lang/String;)Lcom/mapbox/geojson/Point;

    move-result-object p0

    return-object p0
.end method
