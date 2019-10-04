.class public final Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TIME_FADE_ANIMATION:J = 0x1f4L

.field public static final TIME_MAP_NORTH_ANIMATION:J = 0x96L

.field public static final TIME_WAIT_IDLE:J = 0x1f4L


# instance fields
.field private compassAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;

.field private fadeAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private fadeCompassViewFacingNorth:Z

.field private isAnimating:Z

.field private rotation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isAnimating:Z

    .line 41
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isAnimating:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isAnimating:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setEnabled(Z)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x42400000    # 48.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-direct {v0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyCompassAnimationListenerWhenAnimating()V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->compassAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;->onCompassAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final fadeCompassViewFacingNorth(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    return-void
.end method

.method public final getCompassImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final injectCompassAnimationListener(Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->compassAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;

    return-void
.end method

.method public final isAnimating(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isAnimating:Z

    return-void
.end method

.method public final isFacingNorth()Z
    .locals 5

    .line 84
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4076700000000000L    # 359.0

    cmpl-double v4, v0, v2

    if-gez v4, :cond_1

    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isFadeCompassViewFacingNorth()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isFacingNorth()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final resetAnimation()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public final run()V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->compassAnimationListener:Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMap$OnCompassAnimationListener;->onCompassAnimationFinished()V

    .line 159
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 161
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 162
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView$1;-><init>(Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_0
    return-void
.end method

.method public final setCompassImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setVisibility(I)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setAlpha(F)V

    const/4 p1, 0x4

    .line 97
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setVisibility(I)V

    return-void
.end method

.method public final update(D)V
    .locals 0

    double-to-float p1, p1

    .line 107
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    .line 109
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->fadeAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x1f4

    .line 117
    invoke-virtual {p0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->resetAnimation()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->notifyCompassAnimationListenerWhenAnimating()V

    .line 126
    iget p1, p0, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->rotation:F

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/widgets/CompassView;->setRotation(F)V

    return-void
.end method
