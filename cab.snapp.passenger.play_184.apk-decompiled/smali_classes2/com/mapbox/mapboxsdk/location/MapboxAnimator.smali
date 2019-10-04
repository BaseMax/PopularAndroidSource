.class abstract Lcom/mapbox/mapboxsdk/location/MapboxAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;,
        Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;"
    }
.end annotation


# static fields
.field static final ANIMATOR_CAMERA_COMPASS_BEARING:I = 0x5

.field static final ANIMATOR_CAMERA_GPS_BEARING:I = 0x4

.field static final ANIMATOR_CAMERA_LATLNG:I = 0x1

.field static final ANIMATOR_LAYER_ACCURACY:I = 0x6

.field static final ANIMATOR_LAYER_COMPASS_BEARING:I = 0x3

.field static final ANIMATOR_LAYER_GPS_BEARING:I = 0x2

.field static final ANIMATOR_LAYER_LATLNG:I = 0x0

.field static final ANIMATOR_TILT:I = 0x8

.field static final ANIMATOR_ZOOM:I = 0x7


# instance fields
.field private animatedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final minUpdateInterval:D

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private timeElapsed:J

.field private final updateListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;",
            "Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener<",
            "TK;>;I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    int-to-double v0, p4

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->minUpdateInterval:D

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p2, p4, p1

    .line 54
    invoke-virtual {p0, p4}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->provideEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 56
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->updateListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    .line 57
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->target:Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    new-instance p1, Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimatorListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimatorListener;-><init>(Lcom/mapbox/mapboxsdk/location/MapboxAnimator;Lcom/mapbox/mapboxsdk/location/MapboxAnimator$1;)V

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/location/MapboxAnimator;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->postUpdates()V

    return-void
.end method

.method private postUpdates()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->updateListener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->animatedValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;->onNewAnimationValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->animatedValue:Ljava/lang/Object;

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->timeElapsed:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->minUpdateInterval:D

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->postUpdates()V

    .line 72
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/MapboxAnimator;->timeElapsed:J

    return-void
.end method

.method abstract provideEvaluator()Landroid/animation/TypeEvaluator;
.end method
