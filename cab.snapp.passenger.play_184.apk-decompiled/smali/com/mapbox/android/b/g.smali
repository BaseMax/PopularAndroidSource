.class public final Lcom/mapbox/android/b/g;
.super Lcom/mapbox/android/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/b/f<",
        "Lcom/mapbox/android/b/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:J

.field private e:F

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    return-void
.end method


# virtual methods
.method protected final a(I)Z
    .locals 6

    .line 97
    iget v0, p0, Lcom/mapbox/android/b/g;->j:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/android/b/g;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/android/b/g;->getGestureDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mapbox/android/b/g;->d:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/mapbox/android/b/f;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 42
    invoke-super {p0, p1}, Lcom/mapbox/android/b/f;->b(Landroid/view/MotionEvent;)Z

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_3

    .line 54
    :cond_0
    iput-boolean v1, p0, Lcom/mapbox/android/b/g;->i:Z

    goto :goto_3

    .line 47
    :cond_1
    iget-boolean p1, p0, Lcom/mapbox/android/b/g;->i:Z

    if-eqz p1, :cond_2

    .line 48
    iput-boolean v1, p0, Lcom/mapbox/android/b/g;->h:Z

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/mapbox/android/b/g;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/mapbox/android/b/g;->j:I

    goto :goto_3

    .line 67
    :cond_3
    iget-boolean p1, p0, Lcom/mapbox/android/b/g;->h:Z

    if-nez p1, :cond_8

    .line 70
    iget-object p1, p0, Lcom/mapbox/android/b/g;->g:Ljava/util/HashMap;

    .line 1081
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/android/b/e;

    .line 1082
    invoke-virtual {v2}, Lcom/mapbox/android/b/e;->getCurrFingersDiffX()F

    move-result v3

    invoke-virtual {v2}, Lcom/mapbox/android/b/e;->getPrevFingersDiffX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1083
    invoke-virtual {v2}, Lcom/mapbox/android/b/e;->getCurrFingersDiffY()F

    move-result v4

    invoke-virtual {v2}, Lcom/mapbox/android/b/e;->getPrevFingersDiffY()F

    move-result v2

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1085
    iget v4, p0, Lcom/mapbox/android/b/g;->e:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/mapbox/android/b/g;->h:Z

    .line 1087
    iget-boolean v2, p0, Lcom/mapbox/android/b/g;->h:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 70
    :goto_2
    iput-boolean v1, p0, Lcom/mapbox/android/b/g;->h:Z

    :cond_8
    :goto_3
    return v0

    :cond_9
    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 61
    iget-object p1, p0, Lcom/mapbox/android/b/g;->c:Ljava/lang/Object;

    check-cast p1, Lcom/mapbox/android/b/g$a;

    iget v0, p0, Lcom/mapbox/android/b/g;->j:I

    invoke-interface {p1, p0, v0}, Lcom/mapbox/android/b/g$a;->onMultiFingerTap(Lcom/mapbox/android/b/g;I)Z

    move-result v0

    .line 63
    :cond_a
    invoke-virtual {p0}, Lcom/mapbox/android/b/g;->d()V

    return v0
.end method

.method protected final d()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/mapbox/android/b/f;->d()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/mapbox/android/b/g;->j:I

    .line 105
    iput-boolean v0, p0, Lcom/mapbox/android/b/g;->h:Z

    .line 106
    iput-boolean v0, p0, Lcom/mapbox/android/b/g;->i:Z

    return-void
.end method

.method public final getMultiFingerTapMovementThreshold()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/mapbox/android/b/g;->e:F

    return v0
.end method

.method public final getMultiFingerTapTimeThreshold()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/mapbox/android/b/g;->d:J

    return-wide v0
.end method

.method public final setMultiFingerTapMovementThreshold(F)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/mapbox/android/b/g;->e:F

    return-void
.end method

.method public final setMultiFingerTapMovementThresholdResource(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mapbox/android/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/g;->setMultiFingerTapMovementThreshold(F)V

    return-void
.end method

.method public final setMultiFingerTapTimeThreshold(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/mapbox/android/b/g;->d:J

    return-void
.end method
