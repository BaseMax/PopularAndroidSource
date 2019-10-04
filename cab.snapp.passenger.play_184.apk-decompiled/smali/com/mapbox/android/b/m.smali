.class public final Lcom/mapbox/android/b/m;
.super Lcom/mapbox/android/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/b/m$b;,
        Lcom/mapbox/android/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/b/j<",
        "Lcom/mapbox/android/b/m$a;",
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

.field private m:F

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    sput-object v0, Lcom/mapbox/android/b/m;->l:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/j;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    return-void
.end method


# virtual methods
.method protected final a(I)Z
    .locals 2

    .line 110
    iget v0, p0, Lcom/mapbox/android/b/m;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/mapbox/android/b/m;->n:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/mapbox/android/b/j;->a(I)Z

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

    .line 36
    sget-object v0, Lcom/mapbox/android/b/m;->l:Ljava/util/Set;

    return-object v0
.end method

.method protected final c()Z
    .locals 8

    .line 91
    invoke-super {p0}, Lcom/mapbox/android/b/j;->c()Z

    .line 1143
    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/android/b/m;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1144
    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v4, p0, Lcom/mapbox/android/b/m;->f:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1147
    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v6, p0, Lcom/mapbox/android/b/m;->f:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1148
    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/mapbox/android/b/m;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v2, v4

    div-float/2addr v2, v1

    sub-float/2addr v2, v0

    .line 93
    iput v2, p0, Lcom/mapbox/android/b/m;->e:F

    .line 94
    iget v0, p0, Lcom/mapbox/android/b/m;->d:F

    iget v1, p0, Lcom/mapbox/android/b/m;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mapbox/android/b/m;->d:F

    .line 96
    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mapbox/android/b/m;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mapbox/android/b/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/m$a;

    iget v1, p0, Lcom/mapbox/android/b/m;->e:F

    iget v2, p0, Lcom/mapbox/android/b/m;->d:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/b/m$a;->onShove(Lcom/mapbox/android/b/m;FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    .line 98
    invoke-virtual {p0, v0}, Lcom/mapbox/android/b/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/mapbox/android/b/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/m$a;

    invoke-interface {v0, p0}, Lcom/mapbox/android/b/m$a;->onShoveBegin(Lcom/mapbox/android/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/mapbox/android/b/m;->h()V

    return v5

    :cond_1
    return v3
.end method

.method protected final d()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/mapbox/android/b/j;->d()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/mapbox/android/b/m;->d:F

    return-void
.end method

.method protected final e()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/mapbox/android/b/j;->e()V

    .line 122
    iget-object v0, p0, Lcom/mapbox/android/b/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/m$a;

    iget v1, p0, Lcom/mapbox/android/b/m;->j:F

    iget v2, p0, Lcom/mapbox/android/b/m;->k:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/b/m$a;->onShoveEnd(Lcom/mapbox/android/b/m;FF)V

    return-void
.end method

.method protected final g()Z
    .locals 8

    .line 116
    invoke-super {p0}, Lcom/mapbox/android/b/j;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2132
    iget-object v0, p0, Lcom/mapbox/android/b/m;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/mapbox/android/b/i;

    iget-object v3, p0, Lcom/mapbox/android/b/m;->f:Ljava/util/List;

    const/4 v4, 0x0

    .line 2133
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/mapbox/android/b/m;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {v2, v3, v5}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/b/e;

    .line 2137
    invoke-virtual {v0}, Lcom/mapbox/android/b/e;->getCurrFingersDiffY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0}, Lcom/mapbox/android/b/e;->getCurrFingersDiffX()F

    move-result v0

    float-to-double v5, v0

    .line 2136
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 2139
    iget v0, p0, Lcom/mapbox/android/b/m;->m:F

    float-to-double v5, v0

    cmpg-double v7, v2, v5

    if-lez v7, :cond_1

    const-wide v5, 0x4066800000000000L    # 180.0

    sub-double/2addr v5, v2

    float-to-double v2, v0

    cmpg-double v0, v5, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v1
.end method

.method public final getDeltaPixelSinceLast()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/mapbox/android/b/m;->e:F

    return v0
.end method

.method public final getDeltaPixelsSinceStart()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/mapbox/android/b/m;->d:F

    return v0
.end method

.method public final getMaxShoveAngle()F
    .locals 1

    .line 208
    iget v0, p0, Lcom/mapbox/android/b/m;->m:F

    return v0
.end method

.method public final getPixelDeltaThreshold()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/mapbox/android/b/m;->n:F

    return v0
.end method

.method public final setMaxShoveAngle(F)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/mapbox/android/b/m;->m:F

    return-void
.end method

.method public final setPixelDeltaThreshold(F)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/mapbox/android/b/m;->n:F

    return-void
.end method

.method public final setPixelDeltaThresholdResource(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mapbox/android/b/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/m;->setPixelDeltaThreshold(F)V

    return-void
.end method
