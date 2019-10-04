.class public final Lcom/mapbox/android/b/l;
.super Lcom/mapbox/android/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/b/l$b;,
        Lcom/mapbox/android/b/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/b/j<",
        "Lcom/mapbox/android/b/l$a;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sput-object v0, Lcom/mapbox/android/b/l;->l:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/j;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    return-void
.end method


# virtual methods
.method protected final a(I)Z
    .locals 2

    .line 111
    iget v0, p0, Lcom/mapbox/android/b/l;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/mapbox/android/b/l;->m:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

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

    .line 34
    sget-object v0, Lcom/mapbox/android/b/l;->l:Ljava/util/Set;

    return-object v0
.end method

.method protected final c()Z
    .locals 10

    .line 92
    invoke-super {p0}, Lcom/mapbox/android/b/j;->c()Z

    .line 1134
    iget-object v0, p0, Lcom/mapbox/android/b/l;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/l;->f:Ljava/util/List;

    const/4 v3, 0x0

    .line 1135
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mapbox/android/b/l;->f:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v1, v2, v4}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/b/e;

    .line 1137
    invoke-virtual {v0}, Lcom/mapbox/android/b/e;->getPrevFingersDiffY()F

    move-result v1

    float-to-double v1, v1

    .line 1138
    invoke-virtual {v0}, Lcom/mapbox/android/b/e;->getPrevFingersDiffX()F

    move-result v4

    float-to-double v6, v4

    .line 1137
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 1139
    invoke-virtual {v0}, Lcom/mapbox/android/b/e;->getCurrFingersDiffY()F

    move-result v4

    float-to-double v6, v4

    .line 1140
    invoke-virtual {v0}, Lcom/mapbox/android/b/e;->getCurrFingersDiffX()F

    move-result v0

    float-to-double v8, v0

    .line 1138
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double/2addr v1, v6

    .line 1141
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 94
    iput v0, p0, Lcom/mapbox/android/b/l;->e:F

    .line 95
    iget v0, p0, Lcom/mapbox/android/b/l;->d:F

    iget v1, p0, Lcom/mapbox/android/b/l;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mapbox/android/b/l;->d:F

    .line 97
    invoke-virtual {p0}, Lcom/mapbox/android/b/l;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mapbox/android/b/l;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mapbox/android/b/l;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/l$a;

    iget v1, p0, Lcom/mapbox/android/b/l;->e:F

    iget v2, p0, Lcom/mapbox/android/b/l;->d:F

    invoke-interface {v0, p0, v1, v2}, Lcom/mapbox/android/b/l$a;->onRotate(Lcom/mapbox/android/b/l;FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    .line 99
    invoke-virtual {p0, v0}, Lcom/mapbox/android/b/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/mapbox/android/b/l;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mapbox/android/b/l$a;

    invoke-interface {v0, p0}, Lcom/mapbox/android/b/l$a;->onRotateBegin(Lcom/mapbox/android/b/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/mapbox/android/b/l;->h()V

    return v5

    :cond_1
    return v3
.end method

.method protected final d()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/mapbox/android/b/j;->d()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/mapbox/android/b/l;->d:F

    return-void
.end method

.method protected final e()V
    .locals 10

    .line 116
    invoke-super {p0}, Lcom/mapbox/android/b/j;->e()V

    .line 118
    iget v0, p0, Lcom/mapbox/android/b/l;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 119
    iput v1, p0, Lcom/mapbox/android/b/l;->j:F

    .line 120
    iput v1, p0, Lcom/mapbox/android/b/l;->k:F

    .line 123
    :cond_0
    iget v0, p0, Lcom/mapbox/android/b/l;->j:F

    iget v2, p0, Lcom/mapbox/android/b/l;->k:F

    .line 1145
    invoke-virtual {p0}, Lcom/mapbox/android/b/l;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v2

    invoke-virtual {p0}, Lcom/mapbox/android/b/l;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v0

    add-float/2addr v3, v2

    float-to-double v2, v3

    .line 1146
    invoke-virtual {p0}, Lcom/mapbox/android/b/l;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/mapbox/android/b/l;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v8, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 1145
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1148
    iget v2, p0, Lcom/mapbox/android/b/l;->e:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    neg-float v0, v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/mapbox/android/b/l;->c:Ljava/lang/Object;

    check-cast v1, Lcom/mapbox/android/b/l$a;

    iget v2, p0, Lcom/mapbox/android/b/l;->j:F

    iget v3, p0, Lcom/mapbox/android/b/l;->k:F

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/mapbox/android/b/l$a;->onRotateEnd(Lcom/mapbox/android/b/l;FFF)V

    return-void
.end method

.method public final getAngleThreshold()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/mapbox/android/b/l;->m:F

    return v0
.end method

.method public final getDeltaSinceLast()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/mapbox/android/b/l;->e:F

    return v0
.end method

.method public final getDeltaSinceStart()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/mapbox/android/b/l;->d:F

    return v0
.end method

.method public final setAngleThreshold(F)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/mapbox/android/b/l;->m:F

    return-void
.end method
