.class final Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$TapGestureListener;,
        Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$ShoveGestureListener;,
        Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$RotateGestureListener;,
        Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$ScaleGestureListener;,
        Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$MoveGestureListener;,
        Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$StandardGestureListener;
    }
.end annotation


# instance fields
.field private animationsTimeoutHandler:Landroid/os/Handler;

.field private final annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

.field private final cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

.field private final cancelAnimatorsRunnable:Ljava/lang/Runnable;

.field private constantFocalPoint:Landroid/graphics/PointF;

.field private doubleTapFocalPoint:Landroid/graphics/PointF;

.field private doubleTapRegistered:Z

.field private gesturesManager:Lcom/mapbox/android/b/a;

.field private final onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final projection:Lcom/mapbox/mapboxsdk/maps/Projection;

.field private rotateAnimator:Landroid/animation/Animator;

.field private scaleAnimator:Landroid/animation/Animator;

.field private final scheduledAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final transform:Lcom/mapbox/mapboxsdk/maps/Transform;

.field private final uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Transform;Lcom/mapbox/mapboxsdk/maps/Projection;Lcom/mapbox/mapboxsdk/maps/UiSettings;Lcom/mapbox/mapboxsdk/maps/AnnotationManager;Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$1;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimatorsRunnable:Ljava/lang/Runnable;

    .line 102
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    .line 103
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    .line 104
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    .line 105
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    .line 106
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    if-eqz p1, :cond_0

    .line 111
    new-instance p2, Lcom/mapbox/android/b/a;

    invoke-direct {p2, p1}, Lcom/mapbox/android/b/a;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 112
    invoke-direct {p0, p2, p3}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->initializeGesturesManager(Lcom/mapbox/android/b/a;Z)V

    .line 115
    invoke-direct {p0, p1, p3}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelTransitionsIfRequired()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->dispatchCameraIdle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Lcom/mapbox/android/b/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Landroid/animation/Animator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Landroid/animation/Animator;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Landroid/animation/Animator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Lcom/mapbox/mapboxsdk/maps/Transform;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Lcom/mapbox/mapboxsdk/maps/AnnotationManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->annotationManager:Lcom/mapbox/mapboxsdk/maps/AnnotationManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Lcom/mapbox/mapboxsdk/maps/UiSettings;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Landroid/graphics/PointF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$602(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapStarted()V

    return-void
.end method

.method static synthetic access$800(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Landroid/graphics/PointF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    return-object p0
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelTransitionsIfRequired()V
    .locals 1

    .line 969
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->noGesturesInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    :cond_0
    return-void
.end method

.method private createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    double-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    add-double/2addr p1, p3

    double-to-float p1, p1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 886
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 887
    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 888
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 889
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$2;

    invoke-direct {p2, p0, p5}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$2;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 897
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$3;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$3;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private dispatchCameraIdle()V
    .locals 1

    .line 959
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->noGesturesInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->invalidateCameraPosition()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 963
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cameraChangeDispatcher:Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/CameraChangeDispatcher;->onCameraIdle()V

    :cond_0
    return-void
.end method

.method private doubleTapFinished()V
    .locals 2

    .line 453
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapRegistered:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getMoveGestureDetector()Lcom/mapbox/android/b/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/d;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapRegistered:Z

    :cond_0
    return-void
.end method

.method private doubleTapStarted()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getMoveGestureDetector()Lcom/mapbox/android/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/d;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapRegistered:Z

    return-void
.end method

.method private initializeGestureListeners(Landroid/content/Context;Z)V
    .locals 14

    move-object v8, p0

    if-eqz p2, :cond_0

    .line 121
    new-instance v9, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$StandardGestureListener;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/android/b/k$a;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {v9, p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$StandardGestureListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;F)V

    .line 124
    new-instance v10, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$MoveGestureListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$MoveGestureListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$1;)V

    .line 125
    new-instance v12, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$ScaleGestureListener;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_density_constant:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v2, v0

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_minimum_scale_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_minimum_angled_scale_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_minimum_scale_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$ScaleGestureListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;DFFF)V

    .line 131
    new-instance v13, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$RotateGestureListener;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_minimum_scale_span_when_rotating:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_density_constant:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v3, v0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_angular_velocity_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_minimum_angular_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/android/b/k$a;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$RotateGestureListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;FDFFF)V

    .line 138
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$ShoveGestureListener;

    invoke-direct {v0, p0, v11}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$ShoveGestureListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$1;)V

    .line 139
    new-instance v1, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$TapGestureListener;

    invoke-direct {v1, p0, v11}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$TapGestureListener;-><init>(Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;Lcom/mapbox/mapboxsdk/maps/MapGestureDetector$1;)V

    .line 141
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v2, v9}, Lcom/mapbox/android/b/a;->setStandardGestureListener(Lcom/mapbox/android/b/o$b;)V

    .line 142
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v2, v10}, Lcom/mapbox/android/b/a;->setMoveGestureListener(Lcom/mapbox/android/b/d$a;)V

    .line 143
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v2, v12}, Lcom/mapbox/android/b/a;->setStandardScaleGestureListener(Lcom/mapbox/android/b/p$b;)V

    .line 144
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v2, v13}, Lcom/mapbox/android/b/a;->setRotateGestureListener(Lcom/mapbox/android/b/l$a;)V

    .line 145
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v2, v0}, Lcom/mapbox/android/b/a;->setShoveGestureListener(Lcom/mapbox/android/b/m$a;)V

    .line 146
    iget-object v0, v8, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0, v1}, Lcom/mapbox/android/b/a;->setMultiFingerTapGestureListener(Lcom/mapbox/android/b/g$a;)V

    :cond_0
    return-void
.end method

.method private initializeGesturesManager(Lcom/mapbox/android/b/a;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 153
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x3

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object p2, v0, v5

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    .line 165
    invoke-virtual {p1, v0}, Lcom/mapbox/android/b/a;->setMutuallyExclusiveGestures([Ljava/util/Set;)V

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    .line 169
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {p1}, Lcom/mapbox/android/b/a;->getRotateGestureDetector()Lcom/mapbox/android/b/l;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lcom/mapbox/android/b/l;->setAngleThreshold(F)V

    return-void
.end method

.method private noGesturesInProgress()Z
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getMoveGestureDetector()Lcom/mapbox/android/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/b/d;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    .line 976
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getStandardScaleGestureDetector()Lcom/mapbox/android/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/b/p;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    .line 977
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getRotateGestureDetector()Lcom/mapbox/android/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/b/l;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    .line 978
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->isTiltGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v0}, Lcom/mapbox/android/b/a;->getShoveGestureDetector()Lcom/mapbox/android/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/b/m;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleAnimator(Landroid/animation/Animator;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimatorsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private zoomAnimated(ZLandroid/graphics/PointF;Z)V
    .locals 9

    .line 942
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimator(Landroid/animation/Animator;)V

    .line 944
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->getRawZoom()D

    move-result-wide v2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v4, v0

    const-wide/16 v7, 0x12c

    move-object v1, p0

    move-object v6, p2

    .line 945
    invoke-direct/range {v1 .. v8}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    if-eqz p3, :cond_1

    .line 951
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 953
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method final addOnFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addOnMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addOnRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addOnScaleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addShoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;)V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final cancelAnimators()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimator(Landroid/animation/Animator;)V

    .line 253
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimator(Landroid/animation/Animator;)V

    .line 255
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->dispatchCameraIdle()V

    return-void
.end method

.method final getGesturesManager()Lcom/mapbox/android/b/a;
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    return-object v0
.end method

.method final notifyOnFlingListeners()V
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;

    .line 999
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;->onFling()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnMapClickListeners(Landroid/graphics/PointF;)V
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;

    .line 983
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;->onMapClick(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method final notifyOnMapLongClickListeners(Landroid/graphics/PointF;)V
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;

    .line 991
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->projection:Lcom/mapbox/mapboxsdk/maps/Projection;

    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;->onMapLongClick(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method final notifyOnMoveBeginListeners(Lcom/mapbox/android/b/d;)V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

    .line 1005
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;->onMoveBegin(Lcom/mapbox/android/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnMoveEndListeners(Lcom/mapbox/android/b/d;)V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

    .line 1017
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;->onMoveEnd(Lcom/mapbox/android/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnMoveListeners(Lcom/mapbox/android/b/d;)V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;

    .line 1011
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;->onMove(Lcom/mapbox/android/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnRotateBeginListeners(Lcom/mapbox/android/b/l;)V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

    .line 1023
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;->onRotateBegin(Lcom/mapbox/android/b/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnRotateEndListeners(Lcom/mapbox/android/b/l;)V
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

    .line 1035
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;->onRotateEnd(Lcom/mapbox/android/b/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnRotateListeners(Lcom/mapbox/android/b/l;)V
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;

    .line 1029
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;->onRotate(Lcom/mapbox/android/b/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnScaleBeginListeners(Lcom/mapbox/android/b/p;)V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;

    .line 1041
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;->onScaleBegin(Lcom/mapbox/android/b/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnScaleEndListeners(Lcom/mapbox/android/b/p;)V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;

    .line 1053
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;->onScaleEnd(Lcom/mapbox/android/b/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnScaleListeners(Lcom/mapbox/android/b/p;)V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;

    .line 1047
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;->onScale(Lcom/mapbox/android/b/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnShoveBeginListeners(Lcom/mapbox/android/b/m;)V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;

    .line 1059
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;->onShoveBegin(Lcom/mapbox/android/b/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnShoveEndListeners(Lcom/mapbox/android/b/m;)V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;

    .line 1071
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;->onShoveEnd(Lcom/mapbox/android/b/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final notifyOnShoveListeners(Lcom/mapbox/android/b/m;)V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;

    .line 1065
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;->onShove(Lcom/mapbox/android/b/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return v2

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->cancelTransitions()V

    const/16 v0, 0x9

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    float-to-double v2, v0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->zoomBy(DLandroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-eq v1, v2, :cond_1

    return v0

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->cancelAnimators()V

    .line 214
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/maps/Transform;->setGestureInProgress(Z)V

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->gesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {v1, p1}, Lcom/mapbox/android/b/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 221
    :cond_3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapFinished()V

    goto :goto_1

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 240
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->setGestureInProgress(Z)V

    .line 241
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapFinished()V

    goto :goto_1

    .line 225
    :cond_5
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->doubleTapFinished()V

    .line 226
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->transform:Lcom/mapbox/mapboxsdk/maps/Transform;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Transform;->setGestureInProgress(Z)V

    .line 228
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 230
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 232
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 234
    :cond_6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    :goto_1
    return v1
.end method

.method final removeOnFlingListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnFlingListener;)V
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final removeOnMapClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapClickListener;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final removeOnMapLongClickListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMapLongClickListener;)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final removeOnMoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnMoveListener;)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final removeOnRotateListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnRotateListener;)V
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final removeOnScaleListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnScaleListener;)V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final removeShoveListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnShoveListener;)V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final setFocalPoint(Landroid/graphics/PointF;)V
    .locals 1

    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->uiSettings:Lcom/mapbox/mapboxsdk/maps/UiSettings;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/UiSettings;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p1

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    return-void
.end method

.method final setGesturesManager(Landroid/content/Context;Lcom/mapbox/android/b/a;ZZ)V
    .locals 0

    .line 1137
    invoke-direct {p0, p2, p4}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->initializeGesturesManager(Lcom/mapbox/android/b/a;Z)V

    .line 1138
    invoke-direct {p0, p1, p3}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;Z)V

    return-void
.end method

.method final zoomInAnimated(Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 926
    invoke-direct {p0, v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method final zoomOutAnimated(Landroid/graphics/PointF;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 937
    invoke-direct {p0, v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    return-void
.end method
