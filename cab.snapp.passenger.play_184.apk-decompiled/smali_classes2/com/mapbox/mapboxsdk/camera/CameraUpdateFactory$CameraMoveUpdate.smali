.class final Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/camera/CameraUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CameraMoveUpdate"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput p1, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->x:F

    .line 377
    iput p2, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->y:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;

    .line 418
    iget v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->x:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 421
    :cond_2
    iget p1, p1, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->y:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->y:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getCameraPosition(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 8

    .line 382
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object v1

    .line 385
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->getWidth()F

    move-result v2

    .line 386
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->getHeight()F

    move-result v0

    .line 387
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getPadding()[I

    move-result-object v3

    .line 390
    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/4 v5, 0x1

    aget v6, v3, v5

    int-to-float v6, v6

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iget v7, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->x:F

    add-float/2addr v2, v7

    aget v5, v3, v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    const/4 v5, 0x3

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v3, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->y:F

    add-float/2addr v0, v3

    invoke-direct {v4, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 395
    invoke-virtual {v1, v4}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    .line 397
    new-instance v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;-><init>()V

    .line 399
    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    .line 402
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->build()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    .line 426
    iget v0, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->x:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 427
    iget v3, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->y:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraMoveUpdate{x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory$CameraMoveUpdate;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
