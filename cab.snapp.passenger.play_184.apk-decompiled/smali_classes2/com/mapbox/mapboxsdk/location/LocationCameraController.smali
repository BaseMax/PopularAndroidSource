.class final Lcom/mapbox/mapboxsdk/location/LocationCameraController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/LocationCameraController$LocationGesturesManager;
    }
.end annotation


# instance fields
.field private adjustFocalPoint:Z

.field private cameraMode:I

.field private final compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final initialGesturesManager:Lcom/mapbox/android/b/a;

.field private final internalCameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

.field private final internalGesturesManager:Lcom/mapbox/android/b/a;

.field private isTransitioning:Z

.field private final latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

.field private final moveGestureDetector:Lcom/mapbox/android/b/d;

.field private final onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

.field private onFlingListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;

.field onMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

.field private onRotateListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

.field private options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

.field private final tiltValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final transform:Lcom/mapbox/mapboxsdk/maps/Transform;

.field private final zoomValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$2;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$2;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 242
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$3;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$3;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 255
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$4;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$4;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 266
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$5;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$5;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->zoomValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 274
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$6;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$6;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->tiltValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 352
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$7;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$7;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

    .line 392
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$8;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$8;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onRotateListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

    .line 412
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$9;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$9;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onFlingListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;

    .line 53
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 54
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    .line 56
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getGesturesManager()Lcom/mapbox/android/b/a;

    move-result-object p3

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->initialGesturesManager:Lcom/mapbox/android/b/a;

    .line 57
    new-instance p3, Lcom/mapbox/mapboxsdk/location/LocationCameraController$LocationGesturesManager;

    invoke-direct {p3, p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$LocationGesturesManager;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalGesturesManager:Lcom/mapbox/android/b/a;

    .line 58
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalGesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {p1}, Lcom/mapbox/android/b/a;->getMoveGestureDetector()Lcom/mapbox/android/b/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->moveGestureDetector:Lcom/mapbox/android/b/d;

    .line 59
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onRotateListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V

    .line 60
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onFlingListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V

    .line 61
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->addOnMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V

    .line 63
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalCameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    .line 64
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    .line 65
    invoke-virtual {p0, p5}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->initializeOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    return-void
.end method

.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/android/b/d;Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;Lcom/mapbox/android/b/a;Lcom/mapbox/android/b/a;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$2;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$2;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 242
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$3;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$3;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 255
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$4;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$4;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 266
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$5;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$5;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->zoomValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 274
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$6;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$6;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->tiltValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 352
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$7;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$7;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onMoveListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

    .line 392
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$8;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$8;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onRotateListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

    .line 412
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationCameraController$9;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$9;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onFlingListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;

    .line 76
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    .line 77
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    .line 78
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->moveGestureDetector:Lcom/mapbox/android/b/d;

    .line 79
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalCameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    .line 80
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    .line 81
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalGesturesManager:Lcom/mapbox/android/b/a;

    .line 82
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->initialGesturesManager:Lcom/mapbox/android/b/a;

    return-void
.end method

.method static synthetic access$002(Lcom/mapbox/mapboxsdk/location/LocationCameraController;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    return p0
.end method

.method static synthetic access$1000(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->adjustGesturesThresholds()V

    return-void
.end method

.method static synthetic access$200(Lcom/mapbox/mapboxsdk/location/LocationCameraController;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->setLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)Lcom/mapbox/mapboxsdk/maps/MapboxMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/location/LocationCameraController;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->setBearing(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/mapbox/mapboxsdk/location/LocationCameraController;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->setZoom(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/mapbox/mapboxsdk/location/LocationCameraController;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->setTilt(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationTracking()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/mapbox/mapboxsdk/location/LocationCameraController;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isBearingTracking()Z

    move-result p0

    return p0
.end method

.method private adjustGesturesThresholds()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->adjustFocalPoint:Z

    .line 311
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->moveGestureDetector:Lcom/mapbox/android/b/d;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/d;->setMoveThreshold(F)V

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->moveGestureDetector:Lcom/mapbox/android/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/d;->setMoveThreshold(F)V

    :cond_1
    return-void
.end method

.method private isBearingTracking()Z
    .locals 2

    .line 331
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isLocationBearingTracking()Z
    .locals 2

    .line 339
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isLocationTracking()Z
    .locals 2

    .line 324
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifyCameraTrackingChangeListener(Z)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalCameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;->onCameraTrackingChanged(I)V

    if-eqz p1, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationTracking()Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setFocalPoint(Landroid/graphics/PointF;)V

    .line 348
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalCameraTrackingChangedListener:Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/OnCameraTrackingChangedListener;->onCameraTrackingDismissed()V

    :cond_0
    return-void
.end method

.method private setBearing(F)V
    .locals 4

    .line 193
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->bearingTo(D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    .line 198
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private setLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V
    .locals 4

    .line 202
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    .line 207
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    .line 209
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->adjustFocalPoint:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->toScreenLocation(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getUiSettings()Lcom/mapbox/mapboxsdk/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->setFocalPoint(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->adjustFocalPoint:Z

    :cond_1
    return-void
.end method

.method private setTilt(F)V
    .locals 4

    .line 226
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->tiltTo(D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    .line 231
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private setZoom(F)V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->zoomTo(D)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    .line 222
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->onCameraMoveInvalidateListener:Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private transitionToCurrentLocation(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V
    .locals 3

    if-nez p1, :cond_6

    .line 130
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationTracking()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    .line 132
    new-instance p1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {p1, p2}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 134
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->target(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 136
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->zoom(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    :cond_0
    if-eqz p7, :cond_1

    .line 139
    invoke-virtual {p7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->tilt(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    :cond_1
    if-eqz p6, :cond_2

    .line 142
    invoke-virtual {p6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    invoke-virtual {v0, p5, p6}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    goto :goto_1

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationBearingTracking()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 145
    iget p5, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    const/16 p6, 0x24

    if-ne p5, p6, :cond_3

    const-wide/16 p5, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p2

    float-to-double p5, p2

    :goto_0
    invoke-virtual {v0, p5, p6}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->bearing(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;

    .line 149
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$Builder;->build()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p2

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/camera/CameraUpdateFactory;->newCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/CameraUpdate;

    move-result-object p2

    .line 150
    new-instance p5, Lcom/mapbox/mapboxsdk/location/LocationCameraController$1;

    invoke-direct {p5, p0, p8}, Lcom/mapbox/mapboxsdk/location/LocationCameraController$1;-><init>(Lcom/mapbox/mapboxsdk/location/LocationCameraController;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V

    .line 168
    iget-object p6, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p6}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p6

    .line 169
    iget-object p7, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p7}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getProjection()Lcom/mapbox/mapboxsdk/maps/Projection;

    move-result-object p7

    iget-object p6, p6, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-static {p7, p6, p1}, Lcom/mapbox/mapboxsdk/location/Utils;->immediateAnimation(Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 170
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object p3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1, p3, p2, p5}, Lcom/mapbox/mapboxsdk/maps/Transform;->moveCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;Lcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    .line 175
    :cond_5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    iget-object p6, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    long-to-int p4, p3

    invoke-virtual {p1, p6, p2, p4, p5}, Lcom/mapbox/mapboxsdk/maps/Transform;->animateCamera(Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/mapboxsdk/camera/CameraUpdate;ILcom/mapbox/mapboxsdk/maps/MapboxMap$CancelableCallback;)V

    return-void

    :cond_6
    if-eqz p8, :cond_7

    .line 183
    iget p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    invoke-interface {p8, p1}, Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionFinished(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method final getAnimationListeners()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 284
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->latLngValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationBearingTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->gpsBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isConsumingCompass()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->compassBearingValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->zoomValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->tiltValueListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;-><init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method final getCameraMode()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    return v0
.end method

.method final initializeOptions(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->options:Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 87
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getGesturesManager()Lcom/mapbox/android/b/a;

    move-result-object p1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->internalGesturesManager:Lcom/mapbox/android/b/a;

    if-eq p1, v1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1, v1, v0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setGesturesManager(Lcom/mapbox/android/b/a;ZZ)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->adjustGesturesThresholds()V

    return-void

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->getGesturesManager()Lcom/mapbox/android/b/a;

    move-result-object p1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->initialGesturesManager:Lcom/mapbox/android/b/a;

    if-eq p1, v1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {p1, v1, v0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->setGesturesManager(Lcom/mapbox/android/b/a;ZZ)V

    :cond_2
    return-void
.end method

.method final isConsumingCompass()Z
    .locals 2

    .line 319
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final isTransitioning()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isTransitioning:Z

    return v0
.end method

.method final setCameraMode(I)V
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v3, 0x2ee

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    .line 98
    invoke-virtual/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method final setCameraMode(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V
    .locals 10

    move-object v9, p0

    move v0, p1

    .line 105
    iget v1, v9, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->isLocationTracking()Z

    move-result v1

    .line 110
    iput v0, v9, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->cameraMode:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 113
    iget-object v0, v9, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->mapboxMap:Lcom/mapbox/mapboxsdk/maps/MapboxMap;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap;->cancelTransitions()V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->adjustGesturesThresholds()V

    .line 117
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->notifyCameraTrackingChangeListener(Z)V

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 118
    invoke-direct/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/location/LocationCameraController;->transitionToCurrentLocation(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/OnLocationCameraTransitionListener;)V

    return-void
.end method
