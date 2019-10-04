.class public final Lcom/mapbox/android/b/p;
.super Lcom/mapbox/android/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/b/p$a;,
        Lcom/mapbox/android/b/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/b/j<",
        "Lcom/mapbox/android/b/p$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/core/view/GestureDetectorCompat;

.field private l:Z

.field private m:Landroid/graphics/PointF;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    sput-object v0, Lcom/mapbox/android/b/p;->d:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/mapbox/android/b/p;->d:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/j;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    .line 54
    new-instance p2, Lcom/mapbox/android/b/p$1;

    invoke-direct {p2, p0}, Lcom/mapbox/android/b/p$1;-><init>(Lcom/mapbox/android/b/p;)V

    .line 64
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mapbox/android/b/p;->e:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method static synthetic a(Lcom/mapbox/android/b/p;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mapbox/android/b/p;->m:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lcom/mapbox/android/b/p;)Z
    .locals 1

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    return v0
.end method


# virtual methods
.method protected final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/mapbox/android/b/p;->d:Ljava/util/Set;

    return-object v0
.end method

.method protected final b(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 143
    iget-boolean v1, p0, Lcom/mapbox/android/b/p;->l:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 155
    iput-boolean v2, p0, Lcom/mapbox/android/b/p;->l:Z

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->interrupt()V

    goto :goto_1

    .line 150
    :cond_2
    iput-boolean v2, p0, Lcom/mapbox/android/b/p;->l:Z

    .line 159
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/mapbox/android/b/j;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/mapbox/android/b/p;->e:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method protected final c()Z
    .locals 8

    .line 69
    invoke-super {p0}, Lcom/mapbox/android/b/j;->c()Z

    .line 71
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->isInProgress()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getPointersCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->e()V

    return v1

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/android/b/p;->m:Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    .line 80
    iput v3, p0, Lcom/mapbox/android/b/p;->r:F

    .line 81
    iput v3, p0, Lcom/mapbox/android/b/p;->s:F

    const/4 v4, 0x0

    .line 82
    :goto_1
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getPointersCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 83
    iget v5, p0, Lcom/mapbox/android/b/p;->r:F

    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/mapbox/android/b/p;->r:F

    .line 84
    iget v5, p0, Lcom/mapbox/android/b/p;->s:F

    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/mapbox/android/b/p;->s:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    :cond_2
    iget v0, p0, Lcom/mapbox/android/b/p;->r:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v0, v4

    iput v0, p0, Lcom/mapbox/android/b/p;->r:F

    .line 87
    iget v0, p0, Lcom/mapbox/android/b/p;->s:F

    mul-float v0, v0, v4

    iput v0, p0, Lcom/mapbox/android/b/p;->s:F

    .line 89
    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    if-eqz v0, :cond_3

    .line 90
    iget v0, p0, Lcom/mapbox/android/b/p;->s:F

    iput v0, p0, Lcom/mapbox/android/b/p;->q:F

    goto :goto_2

    .line 92
    :cond_3
    iget v0, p0, Lcom/mapbox/android/b/p;->r:F

    float-to-double v4, v0

    iget v0, p0, Lcom/mapbox/android/b/p;->s:F

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/mapbox/android/b/p;->q:F

    .line 95
    :goto_2
    iget v0, p0, Lcom/mapbox/android/b/p;->n:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    .line 96
    iget v0, p0, Lcom/mapbox/android/b/p;->q:F

    iput v0, p0, Lcom/mapbox/android/b/p;->n:F

    .line 97
    iget v0, p0, Lcom/mapbox/android/b/p;->r:F

    iput v0, p0, Lcom/mapbox/android/b/p;->o:F

    .line 98
    iget v0, p0, Lcom/mapbox/android/b/p;->s:F

    iput v0, p0, Lcom/mapbox/android/b/p;->p:F

    .line 101
    :cond_4
    iget v0, p0, Lcom/mapbox/android/b/p;->n:F

    iget v4, p0, Lcom/mapbox/android/b/p;->q:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/mapbox/android/b/p;->w:F

    .line 1372
    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 1375
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v5, p0, Lcom/mapbox/android/b/p;->m:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    iget v0, p0, Lcom/mapbox/android/b/p;->q:F

    iget v5, p0, Lcom/mapbox/android/b/p;->t:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_6

    .line 1377
    :cond_5
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v5, p0, Lcom/mapbox/android/b/p;->m:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    iget v0, p0, Lcom/mapbox/android/b/p;->q:F

    iget v5, p0, Lcom/mapbox/android/b/p;->t:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 1378
    :goto_3
    iget v5, p0, Lcom/mapbox/android/b/p;->q:F

    iget v6, p0, Lcom/mapbox/android/b/p;->t:F

    div-float/2addr v5, v6

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    .line 1379
    iget v6, p0, Lcom/mapbox/android/b/p;->t:F

    cmpg-float v6, v6, v3

    if-lez v6, :cond_a

    if-eqz v0, :cond_8

    add-float v0, v5, v4

    goto :goto_4

    :cond_8
    sub-float v0, v4, v5

    goto :goto_4

    .line 1381
    :cond_9
    iget v0, p0, Lcom/mapbox/android/b/p;->t:F

    cmpl-float v5, v0, v3

    if-lez v5, :cond_a

    iget v5, p0, Lcom/mapbox/android/b/p;->q:F

    div-float v0, v5, v0

    goto :goto_4

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    :goto_4
    iput v0, p0, Lcom/mapbox/android/b/p;->z:F

    .line 104
    iget v0, p0, Lcom/mapbox/android/b/p;->z:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/mapbox/android/b/p;->y:Z

    .line 107
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/mapbox/android/b/p;->q:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/mapbox/android/b/p;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/p$b;

    invoke-interface {v0, p0}, Lcom/mapbox/android/b/p$b;->onScale(Lcom/mapbox/android/b/p;)Z

    move-result v1

    goto :goto_6

    .line 109
    :cond_c
    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    if-eqz v0, :cond_d

    const/16 v2, 0xf

    :cond_d
    invoke-virtual {p0, v2}, Lcom/mapbox/android/b/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/mapbox/android/b/p;->w:F

    iget v2, p0, Lcom/mapbox/android/b/p;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_e

    .line 111
    iget-object v0, p0, Lcom/mapbox/android/b/p;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/p$b;

    invoke-interface {v0, p0}, Lcom/mapbox/android/b/p$b;->onScaleBegin(Lcom/mapbox/android/b/p;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 113
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->h()V

    .line 116
    :cond_e
    :goto_6
    iget v0, p0, Lcom/mapbox/android/b/p;->q:F

    iput v0, p0, Lcom/mapbox/android/b/p;->t:F

    .line 117
    iget v0, p0, Lcom/mapbox/android/b/p;->r:F

    iput v0, p0, Lcom/mapbox/android/b/p;->u:F

    .line 118
    iget v0, p0, Lcom/mapbox/android/b/p;->s:F

    iput v0, p0, Lcom/mapbox/android/b/p;->v:F

    return v1
.end method

.method protected final d()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/mapbox/android/b/j;->d()V

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/mapbox/android/b/p;->n:F

    .line 133
    iput v0, p0, Lcom/mapbox/android/b/p;->w:F

    .line 134
    iput v0, p0, Lcom/mapbox/android/b/p;->q:F

    .line 135
    iput v0, p0, Lcom/mapbox/android/b/p;->t:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 136
    iput v0, p0, Lcom/mapbox/android/b/p;->z:F

    return-void
.end method

.method protected final e()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/mapbox/android/b/j;->e()V

    .line 125
    iget-object v0, p0, Lcom/mapbox/android/b/p;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/p$b;

    iget v1, p0, Lcom/mapbox/android/b/p;->j:F

    iget v2, p0, Lcom/mapbox/android/b/p;->k:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/b/p$b;->onScaleEnd(Lcom/mapbox/android/b/p;FF)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    return-void
.end method

.method protected final f()I
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->isInProgress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 166
    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    return v1
.end method

.method protected final g()Z
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/mapbox/android/b/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/android/b/p;->getPointersCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getCurrentSpan()F
    .locals 1

    .line 318
    iget v0, p0, Lcom/mapbox/android/b/p;->q:F

    return v0
.end method

.method public final getCurrentSpanX()F
    .locals 1

    .line 328
    iget v0, p0, Lcom/mapbox/android/b/p;->r:F

    return v0
.end method

.method public final getCurrentSpanY()F
    .locals 1

    .line 338
    iget v0, p0, Lcom/mapbox/android/b/p;->s:F

    return v0
.end method

.method public final getPreviousSpan()F
    .locals 1

    .line 348
    iget v0, p0, Lcom/mapbox/android/b/p;->t:F

    return v0
.end method

.method public final getPreviousSpanX()F
    .locals 1

    .line 358
    iget v0, p0, Lcom/mapbox/android/b/p;->u:F

    return v0
.end method

.method public final getPreviousSpanY()F
    .locals 1

    .line 368
    iget v0, p0, Lcom/mapbox/android/b/p;->v:F

    return v0
.end method

.method public final getScaleFactor()F
    .locals 1

    .line 278
    iget v0, p0, Lcom/mapbox/android/b/p;->z:F

    return v0
.end method

.method public final getSpanSinceStartThreshold()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/mapbox/android/b/p;->x:F

    return v0
.end method

.method public final getStartSpan()F
    .locals 1

    .line 288
    iget v0, p0, Lcom/mapbox/android/b/p;->n:F

    return v0
.end method

.method public final getStartSpanX()F
    .locals 1

    .line 298
    iget v0, p0, Lcom/mapbox/android/b/p;->o:F

    return v0
.end method

.method public final getStartSpanY()F
    .locals 1

    .line 308
    iget v0, p0, Lcom/mapbox/android/b/p;->p:F

    return v0
.end method

.method public final isScalingOut()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/mapbox/android/b/p;->y:Z

    return v0
.end method

.method public final setSpanSinceStartThreshold(F)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/mapbox/android/b/p;->x:F

    return-void
.end method

.method public final setSpanSinceStartThresholdResource(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/mapbox/android/b/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/p;->setSpanSinceStartThreshold(F)V

    return-void
.end method
