.class public Lcom/mapbox/mapboxsdk/maps/Projection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentPadding:[I

.field private final mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

.field private final nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/NativeMap;Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    .line 30
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    .line 31
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static bearing(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)D
    .locals 10

    .line 199
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/maps/Projection;->degreesToRadians(D)D

    move-result-wide v0

    .line 200
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/maps/Projection;->degreesToRadians(D)D

    move-result-wide v2

    .line 201
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/mapbox/mapboxsdk/maps/Projection;->degreesToRadians(D)D

    move-result-wide v4

    .line 202
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->degreesToRadians(D)D

    move-result-wide p0

    sub-double/2addr v2, v0

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 206
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    sub-double/2addr v6, v4

    .line 208
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->radiansToDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static degreesToRadians(D)D
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method static getLongitudeSpan(DD)D
    .locals 3

    sub-double v0, p0, p2

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, p0, p2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide p0, 0x4076800000000000L    # 360.0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method static radiansToDegrees(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public calculateZoom(F)D
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getZoom()D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->latLngForPixel(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    return-object p1
.end method

.method getContentPadding()[I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    return-object v0
.end method

.method getHeight()F
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getLatLngForProjectedMeters(Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->latLngForProjectedMeters(Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public getMetersPerPixelAtLatitude(D)D
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->getMetersPerPixelAtLatitude(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getProjectedMetersForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->projectedMetersForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/ProjectedMeters;

    move-result-object p1

    return-object p1
.end method

.method public getVisibleRegion()Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->getVisibleRegion(Z)Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRegion(Z)Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 125
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 127
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/MapView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v4, v3

    const/4 v3, 0x0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    .line 130
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/MapView;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    const/4 v4, 0x2

    aget v4, v3, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v4, 0x1

    .line 131
    aget v3, v3, v4

    int-to-float v3, v3

    .line 132
    iget-object v4, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/MapView;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 135
    :goto_0
    new-instance v5, Landroid/graphics/PointF;

    sub-float v6, v2, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    sub-float v8, v4, v3

    div-float/2addr v8, v7

    add-float/2addr v8, v3

    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v5}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v5

    .line 137
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v8

    .line 138
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v9

    .line 139
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v11

    .line 140
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v10

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v12, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v22, v6

    move-wide v2, v12

    move-wide v6, v2

    move-wide/from16 v16, v6

    move-wide/from16 v24, v16

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 157
    invoke-static {v5, v4}, Lcom/mapbox/mapboxsdk/maps/Projection;->bearing(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)D

    move-result-wide v14

    cmpl-double v20, v14, v12

    if-ltz v20, :cond_1

    .line 160
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v12

    invoke-static {v14, v15, v12, v13}, Lcom/mapbox/mapboxsdk/maps/Projection;->getLongitudeSpan(DD)D

    move-result-wide v12

    cmpl-double v14, v12, v6

    if-lez v14, :cond_2

    .line 163
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v16

    move-wide v6, v12

    goto :goto_2

    .line 166
    :cond_1
    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/mapbox/mapboxsdk/maps/Projection;->getLongitudeSpan(DD)D

    move-result-wide v12

    cmpl-double v14, v12, v2

    if-lez v14, :cond_2

    .line 169
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    move-wide/from16 v24, v2

    move-wide v2, v12

    .line 173
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v12

    cmpg-double v14, v18, v12

    if-gez v14, :cond_3

    .line 174
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v12

    move-wide/from16 v18, v12

    .line 176
    :cond_3
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v12

    cmpl-double v14, v22, v12

    if-lez v14, :cond_4

    .line 177
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->getLatitude()D

    move-result-wide v12

    move-wide/from16 v22, v12

    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_5
    cmpg-double v1, v16, v24

    if-gez v1, :cond_6

    .line 182
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double v20, v16, v2

    .line 183
    invoke-static/range {v18 .. v25}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->from(DDDD)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v12

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-object v1

    .line 185
    :cond_6
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    move-wide/from16 v14, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    .line 186
    invoke-static/range {v14 .. v21}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->from(DDDD)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v12

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-object v1
.end method

.method getWidth()F
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->mapView:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public invalidateContentPadding()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/Projection;->setContentPadding([I)V

    return-void
.end method

.method setContentPadding([I)V
    .locals 3

    .line 35
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->contentPadding:[I

    .line 36
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 37
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 38
    aget v2, p1, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->setContentPadding([F)V

    return-void
.end method

.method public toScreenLocation(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/Projection;->nativeMapView:Lcom/mapbox/mapboxsdk/maps/NativeMap;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/NativeMap;->pixelForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
