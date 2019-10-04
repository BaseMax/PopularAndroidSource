.class final Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-LocationAnimatorCoordinator"


# instance fields
.field private accuracyAnimationEnabled:Z

.field final animatorArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final animatorProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;

.field private final animatorSetProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;

.field private compassAnimationEnabled:Z

.field private durationMultiplier:F

.field final listeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationUpdateTimestamp:J

.field maxAnimationFps:I

.field private previousAccuracyRadius:F

.field private previousCompassBearing:F

.field private previousLocation:Landroid/location/Location;

.field private final projection:Lcom/mapbox/mapboxsdk/maps/Projection;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 46
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    .line 47
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    const v0, 0x7fffffff

    .line 55
    iput v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    .line 64
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;

    .line 65
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorSetProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;

    return-void
.end method

.method private cancelAnimator(I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->cancel()V

    .line 397
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->removeAllUpdateListeners()V

    .line 398
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->removeAllListeners()V

    .line 399
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private checkGpsNorth(ZF)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method private createNewCameraAdapterAnimator(IFFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 3

    .line 270
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 271
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v2, p2, p3, v0, p4}, Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;->cameraAnimator(Ljava/lang/Float;Ljava/lang/Float;Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)Lcom/mapbox/mapboxsdk/location/MapboxCameraAnimatorAdapter;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createNewFloatAnimator(IFF)V
    .locals 4

    .line 261
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 262
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    invoke-virtual {v2, p2, p3, v0, v3}, Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;->floatAnimator(Ljava/lang/Float;Ljava/lang/Float;Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;I)Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createNewLatLngAnimator(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4

    .line 253
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 254
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    invoke-virtual {v2, p2, p3, v0, v3}, Lcom/mapbox/mapboxsdk/location/MapboxAnimatorProvider;->latLngAnimator(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;I)Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getPreviousAccuracyRadius()F
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 205
    :cond_0
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    :goto_0
    return v0
.end method

.method private getPreviousLayerCompassBearing()F
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 194
    :cond_0
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    :goto_0
    return v0
.end method

.method private getPreviousLayerGpsBearing()F
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    :goto_0
    return v0
.end method

.method private getPreviousLayerLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    :goto_0
    return-object v0
.end method

.method private varargs playAnimators(J[I)V
    .locals 5

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    .line 287
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 289
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorSetProvider:Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/mapbox/mapboxsdk/location/MapboxAnimatorSetProvider;->startAnimation(Ljava/util/List;Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private resetCameraCompassAnimation(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x5

    .line 337
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 343
    iget-wide v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p1, v2

    .line 344
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/location/Utils;->shortestRotation(FF)F

    move-result v0

    .line 345
    invoke-direct {p0, v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private resetCameraGpsBearingAnimation(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 329
    invoke-direct {p0, p2, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->checkGpsNorth(ZF)F

    move-result p2

    .line 330
    iget-wide v2, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p1, v2

    .line 331
    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/location/Utils;->shortestRotation(FF)F

    move-result p2

    .line 332
    invoke-direct {p0, v1, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private resetCameraLatLngAnimation(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 315
    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 316
    iget-object p1, p1, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 317
    invoke-direct {p0, v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 319
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-static {v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/Utils;->immediateAnimation(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    return p1
.end method

.method private resetCameraLocationAnimations(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)Z
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->resetCameraGpsBearingAnimation(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    .line 306
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->resetCameraLatLngAnimation(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Z

    move-result p1

    return p1
.end method

.method private updateAccuracyAnimators(FF)V
    .locals 1

    const/4 v0, 0x6

    .line 239
    invoke-direct {p0, v0, p2, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private updateCameraAnimators(Lcom/mapbox/mapboxsdk/geometry/LatLng;FLcom/mapbox/mapboxsdk/geometry/LatLng;F)V
    .locals 1

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, v0, p1, p3}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 225
    invoke-static {p4, p2}, Lcom/mapbox/mapboxsdk/location/Utils;->shortestRotation(FF)F

    move-result p1

    const/4 p3, 0x4

    .line 226
    invoke-direct {p0, p3, p2, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private updateCompassAnimators(FFF)V
    .locals 2

    .line 231
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/location/Utils;->shortestRotation(FF)F

    move-result v0

    const/4 v1, 0x3

    .line 232
    invoke-direct {p0, v1, p2, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    .line 234
    invoke-static {p1, p3}, Lcom/mapbox/mapboxsdk/location/Utils;->shortestRotation(FF)F

    move-result p1

    const/4 p2, 0x5

    .line 235
    invoke-direct {p0, p2, p3, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private updateLayerAnimators(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;FF)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 216
    invoke-static {p3}, Lcom/mapbox/mapboxsdk/location/Utils;->normalize(F)F

    move-result p1

    .line 217
    invoke-static {p4, p1}, Lcom/mapbox/mapboxsdk/location/Utils;->shortestRotation(FF)F

    move-result p2

    const/4 p3, 0x2

    .line 218
    invoke-direct {p0, p3, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private updateTiltAnimator(FFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    const/16 v0, 0x8

    .line 249
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewCameraAdapterAnimator(IFFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method

.method private updateZoomAnimator(FFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 1

    const/4 v0, 0x7

    .line 244
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewCameraAdapterAnimator(IFFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void
.end method


# virtual methods
.method final cancelAllAnimations()V
    .locals 2

    const/4 v0, 0x0

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 389
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final cancelTiltAnimation()V
    .locals 1

    const/16 v0, 0x8

    .line 383
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    return-void
.end method

.method final cancelZoomAnimation()V
    .locals 1

    const/4 v0, 0x7

    .line 379
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    return-void
.end method

.method final feedNewAccuracyRadius(FZ)V
    .locals 4

    .line 140
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 141
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->getPreviousAccuracyRadius()F

    move-result v0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateAccuracyAnimators(FF)V

    if-nez p2, :cond_2

    .line 146
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->accuracyAnimationEnabled:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xfa

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, p2, v2

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 150
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    return-void
.end method

.method final feedNewCompassBearing(FLcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .locals 3

    .line 123
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 124
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->getPreviousLayerCompassBearing()F

    move-result v0

    .line 128
    iget-wide v1, p2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p2, v1

    .line 130
    invoke-direct {p0, p1, v0, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateCompassAnimators(FFF)V

    .line 131
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 136
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
    .end array-data
.end method

.method final feedNewLocation(Landroid/location/Location;Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->getPreviousLayerLatLng()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    .line 83
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->getPreviousLayerGpsBearing()F

    move-result v1

    .line 84
    iget-object v2, p2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 85
    iget-wide v3, p2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    double-to-float p2, v3

    .line 87
    new-instance v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v3, p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 88
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    .line 89
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v5

    .line 90
    invoke-direct {p0, p3, v5}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->checkGpsNorth(ZF)F

    move-result p3

    .line 92
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateLayerAnimators(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;FF)V

    .line 93
    invoke-direct {p0, v2, p2, v3, p3}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateCameraAnimators(Lcom/mapbox/mapboxsdk/geometry/LatLng;FLcom/mapbox/mapboxsdk/geometry/LatLng;F)V

    .line 95
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-static {p2, v2, v3}, Lcom/mapbox/mapboxsdk/location/Utils;->immediateAnimation(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    .line 96
    invoke-static {p2, v0, v3}, Lcom/mapbox/mapboxsdk/location/Utils;->immediateAnimation(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const-wide/16 v0, 0x0

    if-nez p2, :cond_4

    .line 100
    iget-wide p2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    sub-long/2addr v0, p2

    long-to-float p2, v0

    iget p3, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->durationMultiplier:F

    mul-float p2, p2, p3

    float-to-long v0, p2

    :goto_2
    const-wide/16 p2, 0x7d0

    .line 110
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_4
    const/4 p2, 0x4

    new-array p2, p2, [I

    .line 113
    fill-array-data p2, :array_0

    invoke-direct {p0, v0, v1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 119
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x4
    .end array-data
.end method

.method final feedNewTilt(DLcom/mapbox/mapboxsdk/camera/CameraPosition;JLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 0

    double-to-float p1, p1

    .line 161
    iget-wide p2, p3, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    double-to-float p2, p2

    invoke-direct {p0, p1, p2, p6}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateTiltAnimator(FFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 p3, 0x8

    aput p3, p1, p2

    .line 162
    invoke-direct {p0, p4, p5, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void
.end method

.method final feedNewZoomLevel(DLcom/mapbox/mapboxsdk/camera/CameraPosition;JLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V
    .locals 0

    double-to-float p1, p1

    .line 155
    iget-wide p2, p3, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    double-to-float p2, p2

    invoke-direct {p0, p1, p2, p6}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->updateZoomAnimator(FFLcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 p3, 0x7

    aput p3, p1, p2

    .line 156
    invoke-direct {p0, p4, p5, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void
.end method

.method final resetAllCameraAnimations(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V
    .locals 1

    .line 296
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->resetCameraCompassAnimation(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->resetCameraLocationAnimations(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x2ee

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 298
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method final resetAllLayerAnimations()V
    .locals 10

    .line 349
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;

    .line 350
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    .line 351
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v5, 0x3

    .line 352
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 356
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 357
    invoke-direct {p0, v1, v6, v7}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(ILcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    .line 359
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 360
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 361
    invoke-direct {p0, v3, v6, v2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    .line 363
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/MapboxLatLngAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    new-array v0, v3, [I

    .line 365
    fill-array-data v0, :array_0

    invoke-direct {p0, v6, v7, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    :cond_0
    if-eqz v4, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->getPreviousLayerCompassBearing()F

    move-result v0

    .line 370
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/location/MapboxFloatAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 371
    invoke-direct {p0, v5, v0, v2}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    .line 372
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v5, v0, v1

    invoke-direct {p0, v2, v3, v0}, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method final setAccuracyAnimationEnabled(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->accuracyAnimationEnabled:Z

    return-void
.end method

.method final setCompassAnimationEnabled(Z)V
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    return-void
.end method

.method final setMaxAnimationFps(I)V
    .locals 1

    if-gtz p1, :cond_0

    const-string p1, "Mbgl-LocationAnimatorCoordinator"

    const-string v0, "Max animation FPS cannot be less or equal to 0."

    .line 417
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 420
    :cond_0
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    return-void
.end method

.method final setTrackingAnimationDurationMultiplier(F)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->durationMultiplier:F

    return-void
.end method

.method final updateAnimatorListenerHolders(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 70
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    .line 71
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->getAnimatorType()I

    move-result v2

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->getListener()Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
