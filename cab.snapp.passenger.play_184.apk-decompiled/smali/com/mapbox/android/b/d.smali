.class public final Lcom/mapbox/android/b/d;
.super Lcom/mapbox/android/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/b/d$b;,
        Lcom/mapbox/android/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/b/j<",
        "Lcom/mapbox/android/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:F

.field e:F

.field private m:Landroid/graphics/PointF;

.field private n:Z

.field private o:F

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mapbox/android/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    sput-object v0, Lcom/mapbox/android/b/d;->l:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/j;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    return-void
.end method

.method private i()Z
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/android/b/c;

    .line 175
    invoke-virtual {v1}, Lcom/mapbox/android/b/c;->getDistanceXSinceStart()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/mapbox/android/b/d;->o:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_1

    .line 176
    invoke-virtual {v1}, Lcom/mapbox/android/b/c;->getDistanceYSinceStart()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/mapbox/android/b/d;->o:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a(I)Z
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcom/mapbox/android/b/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mapbox/android/b/d;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

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

    .line 51
    sget-object v0, Lcom/mapbox/android/b/d;->l:Ljava/util/Set;

    return-object v0
.end method

.method protected final b(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iput-boolean v1, p0, Lcom/mapbox/android/b/d;->n:Z

    .line 124
    iget-object v0, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 107
    :cond_3
    iput-boolean v1, p0, Lcom/mapbox/android/b/d;->n:Z

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 111
    iget-object v2, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/mapbox/android/b/c;

    invoke-direct {v4, v0, v1}, Lcom/mapbox/android/b/c;-><init>(FF)V

    .line 111
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_0
    invoke-super {p0, p1}, Lcom/mapbox/android/b/j;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected final c()Z
    .locals 6

    .line 140
    invoke-super {p0}, Lcom/mapbox/android/b/j;->c()Z

    .line 1165
    iget-object v0, p0, Lcom/mapbox/android/b/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1166
    iget-object v2, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/android/b/c;

    .line 1167
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1168
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1166
    invoke-virtual {v2, v3, v1}, Lcom/mapbox/android/b/c;->addNewPosition(FF)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->isInProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/mapbox/android/b/d;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mapbox/android/b/d;->d:F

    .line 146
    iget-object v2, p0, Lcom/mapbox/android/b/d;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mapbox/android/b/d;->e:F

    .line 147
    iput-object v0, p0, Lcom/mapbox/android/b/d;->m:Landroid/graphics/PointF;

    .line 148
    iget-boolean v0, p0, Lcom/mapbox/android/b/d;->n:Z

    if-eqz v0, :cond_1

    .line 149
    iput-boolean v1, p0, Lcom/mapbox/android/b/d;->n:Z

    .line 150
    iget-object v0, p0, Lcom/mapbox/android/b/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/d$a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/mapbox/android/b/d$a;->onMove(Lcom/mapbox/android/b/d;FF)Z

    move-result v0

    return v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/b/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/d$a;

    iget v1, p0, Lcom/mapbox/android/b/d;->d:F

    iget v2, p0, Lcom/mapbox/android/b/d;->e:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/b/d$a;->onMove(Lcom/mapbox/android/b/d;FF)Z

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0xd

    .line 153
    invoke-virtual {p0, v0}, Lcom/mapbox/android/b/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/mapbox/android/b/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/d$a;

    invoke-interface {v0, p0}, Lcom/mapbox/android/b/d$a;->onMoveBegin(Lcom/mapbox/android/b/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->h()V

    .line 156
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/b/d;->m:Landroid/graphics/PointF;

    .line 157
    iput-boolean v1, p0, Lcom/mapbox/android/b/d;->n:Z

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method protected final d()V
    .locals 0

    .line 190
    invoke-super {p0}, Lcom/mapbox/android/b/j;->d()V

    return-void
.end method

.method protected final e()V
    .locals 3

    .line 195
    invoke-super {p0}, Lcom/mapbox/android/b/j;->e()V

    .line 196
    iget-object v0, p0, Lcom/mapbox/android/b/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/d$a;

    iget v1, p0, Lcom/mapbox/android/b/d;->j:F

    iget v2, p0, Lcom/mapbox/android/b/d;->k:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/b/d$a;->onMoveEnd(Lcom/mapbox/android/b/d;FF)V

    return-void
.end method

.method protected final f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getLastDistanceX()F
    .locals 1

    .line 240
    iget v0, p0, Lcom/mapbox/android/b/d;->d:F

    return v0
.end method

.method public final getLastDistanceY()F
    .locals 1

    .line 250
    iget v0, p0, Lcom/mapbox/android/b/d;->e:F

    return v0
.end method

.method public final getMoveObject(I)Lcom/mapbox/android/b/c;
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/mapbox/android/b/d;->getPointersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mapbox/android/b/d;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/mapbox/android/b/d;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getMoveThreshold()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/mapbox/android/b/d;->o:F

    return v0
.end method

.method public final setMoveThreshold(F)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/mapbox/android/b/d;->o:F

    return-void
.end method

.method public final setMoveThresholdResource(I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/mapbox/android/b/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/d;->setMoveThreshold(F)V

    return-void
.end method
