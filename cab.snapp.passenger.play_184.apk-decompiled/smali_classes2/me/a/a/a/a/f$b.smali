.class public final Lme/a/a/a/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lme/a/a/a/a/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/a/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field protected final a:Landroid/view/animation/Interpolator;

.field protected final b:F

.field protected final c:F

.field protected final d:Lme/a/a/a/a/f$a;

.field final synthetic e:Lme/a/a/a/a/f;


# direct methods
.method public constructor <init>(Lme/a/a/a/a/f;F)V
    .locals 1

    .line 308
    iput-object p1, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lme/a/a/a/a/f$b;->a:Landroid/view/animation/Interpolator;

    .line 309
    iput p2, p0, Lme/a/a/a/a/f$b;->b:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    .line 310
    iput p2, p0, Lme/a/a/a/a/f$b;->c:F

    .line 312
    invoke-virtual {p1}, Lme/a/a/a/a/f;->b()Lme/a/a/a/a/f$a;

    move-result-object p1

    iput-object p1, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    return-void
.end method

.method private a(F)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 401
    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    invoke-interface {v0}, Lme/a/a/a/a/a/c;->getView()Landroid/view/View;

    move-result-object v0

    .line 404
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    iget v1, v1, Lme/a/a/a/a/f$a;->mMaxOffset:F

    div-float/2addr p1, v1

    const/high16 v1, 0x44480000    # 800.0f

    mul-float p1, p1, v1

    .line 405
    iget-object v1, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    iget-object v1, v1, Lme/a/a/a/a/f$a;->mProperty:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    iget-object v3, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v3, v3, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget v3, v3, Lme/a/a/a/a/f$f;->b:F

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    float-to-int p1, p1

    const/16 v1, 0xc8

    .line 406
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 407
    iget-object p1, p0, Lme/a/a/a/a/f$b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public final getStateId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final handleEntryTransition(Lme/a/a/a/a/f$c;)V
    .locals 6

    .line 323
    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->g:Lme/a/a/a/a/c;

    iget-object v1, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    invoke-interface {p1}, Lme/a/a/a/a/f$c;->getStateId()I

    move-result p1

    invoke-virtual {p0}, Lme/a/a/a/a/f$b;->getStateId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lme/a/a/a/a/c;->onOverScrollStateChange(Lme/a/a/a/a/b;II)V

    .line 1359
    iget-object p1, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object p1, p1, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    invoke-interface {p1}, Lme/a/a/a/a/a/c;->getView()Landroid/view/View;

    move-result-object p1

    .line 1361
    iget-object v0, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    invoke-virtual {v0, p1}, Lme/a/a/a/a/f$a;->a(Landroid/view/View;)V

    .line 1367
    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget v0, v0, Lme/a/a/a/a/f;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget v0, v0, Lme/a/a/a/a/f;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-boolean v0, v0, Lme/a/a/a/a/f$f;->c:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget v0, v0, Lme/a/a/a/a/f;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-boolean v0, v0, Lme/a/a/a/a/f$f;->c:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 1372
    :cond_1
    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget v0, v0, Lme/a/a/a/a/f;->i:F

    neg-float v0, v0

    iget v2, p0, Lme/a/a/a/a/f$b;->b:F

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    const/4 v0, 0x0

    .line 1376
    :cond_2
    iget-object v1, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget v1, v1, Lme/a/a/a/a/f;->i:F

    neg-float v1, v1

    iget-object v2, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget v2, v2, Lme/a/a/a/a/f;->i:F

    mul-float v1, v1, v2

    iget v2, p0, Lme/a/a/a/a/f$b;->c:F

    div-float/2addr v1, v2

    .line 1377
    iget-object v2, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    iget v2, v2, Lme/a/a/a/a/f$a;->mAbsOffset:F

    add-float/2addr v2, v1

    float-to-int v0, v0

    .line 1392
    iget-object v1, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    iget-object v1, v1, Lme/a/a/a/a/f$a;->mProperty:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, v0

    .line 1393
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1394
    iget-object v0, p0, Lme/a/a/a/a/f$b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1395
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1383
    invoke-direct {p0, v2}, Lme/a/a/a/a/f$b;->a(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1386
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object v0, v2, v3

    .line 1387
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_1

    .line 1368
    :cond_3
    :goto_0
    iget-object p1, p0, Lme/a/a/a/a/f$b;->d:Lme/a/a/a/a/f$a;

    iget p1, p1, Lme/a/a/a/a/f$a;->mAbsOffset:F

    invoke-direct {p0, p1}, Lme/a/a/a/a/f$b;->a(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 326
    :goto_1
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 345
    iget-object p1, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v0, p1, Lme/a/a/a/a/f;->c:Lme/a/a/a/a/f$d;

    invoke-virtual {p1, v0}, Lme/a/a/a/a/f;->a(Lme/a/a/a/a/f$c;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 350
    iget-object v0, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->h:Lme/a/a/a/a/d;

    iget-object v1, p0, Lme/a/a/a/a/f$b;->e:Lme/a/a/a/a/f;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, p1}, Lme/a/a/a/a/d;->onOverScrollUpdate(Lme/a/a/a/a/b;IF)V

    return-void
.end method
