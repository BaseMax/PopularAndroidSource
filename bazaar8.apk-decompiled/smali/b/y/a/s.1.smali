.class public Lb/y/a/s;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/y/a/s$b;,
        Lb/y/a/s$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I


# instance fields
.field public final A:[I

.field public final B:Landroid/animation/ValueAnimator;

.field public C:I

.field public final D:Ljava/lang/Runnable;

.field public final E:Landroidx/recyclerview/widget/RecyclerView$n;

.field public final c:I

.field public final d:I

.field public final e:Landroid/graphics/drawable/StateListDrawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:I

.field public final h:I

.field public final i:Landroid/graphics/drawable/StateListDrawable;

.field public final j:Landroid/graphics/drawable/Drawable;

.field public final k:I

.field public final l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:I

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lb/y/a/s;->a:[I

    .line 2
    new-array v0, v1, [I

    sput-object v0, Lb/y/a/s;->b:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/y/a/s;->s:I

    .line 3
    iput v0, p0, Lb/y/a/s;->t:I

    .line 4
    iput-boolean v0, p0, Lb/y/a/s;->v:Z

    .line 5
    iput-boolean v0, p0, Lb/y/a/s;->w:Z

    .line 6
    iput v0, p0, Lb/y/a/s;->x:I

    .line 7
    iput v0, p0, Lb/y/a/s;->y:I

    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [I

    iput-object v2, p0, Lb/y/a/s;->z:[I

    .line 9
    new-array v2, v1, [I

    iput-object v2, p0, Lb/y/a/s;->A:[I

    .line 10
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 11
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    .line 12
    iput v0, p0, Lb/y/a/s;->C:I

    .line 13
    new-instance v0, Lb/y/a/q;

    invoke-direct {v0, p0}, Lb/y/a/q;-><init>(Lb/y/a/s;)V

    iput-object v0, p0, Lb/y/a/s;->D:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lb/y/a/r;

    invoke-direct {v0, p0}, Lb/y/a/r;-><init>(Lb/y/a/s;)V

    iput-object v0, p0, Lb/y/a/s;->E:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 15
    iput-object p2, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    .line 16
    iput-object p3, p0, Lb/y/a/s;->f:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p4, p0, Lb/y/a/s;->i:Landroid/graphics/drawable/StateListDrawable;

    .line 18
    iput-object p5, p0, Lb/y/a/s;->j:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lb/y/a/s;->g:I

    .line 20
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lb/y/a/s;->h:I

    .line 21
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lb/y/a/s;->k:I

    .line 22
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lb/y/a/s;->l:I

    .line 23
    iput p7, p0, Lb/y/a/s;->c:I

    .line 24
    iput p8, p0, Lb/y/a/s;->d:I

    .line 25
    iget-object p2, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 26
    iget-object p2, p0, Lb/y/a/s;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    iget-object p2, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Lb/y/a/s$a;

    invoke-direct {p3, p0}, Lb/y/a/s$a;-><init>(Lb/y/a/s;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    iget-object p2, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    new-instance p3, Lb/y/a/s$b;

    invoke-direct {p3, p0}, Lb/y/a/s$b;-><init>(Lb/y/a/s;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    invoke-virtual {p0, p1}, Lb/y/a/s;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    .line 70
    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float p2, p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public final a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lb/y/a/s;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(F)V
    .locals 8

    .line 61
    invoke-virtual {p0}, Lb/y/a/s;->c()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 62
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 63
    iget v0, p0, Lb/y/a/s;->q:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget v1, p0, Lb/y/a/s;->r:F

    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lb/y/a/s;->s:I

    move-object v0, p0

    move v2, p1

    .line 67
    invoke-virtual/range {v0 .. v6}, Lb/y/a/s;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 69
    :cond_1
    iput p1, p0, Lb/y/a/s;->r:F

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 6
    iget v0, p0, Lb/y/a/s;->C:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lb/y/a/s;->C:I

    .line 9
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object p1, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 8

    .line 24
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 25
    iget v1, p0, Lb/y/a/s;->t:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    .line 26
    iget v2, p0, Lb/y/a/s;->c:I

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lb/y/a/s;->v:Z

    .line 27
    iget-object v2, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 28
    iget v5, p0, Lb/y/a/s;->s:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    .line 29
    iget v6, p0, Lb/y/a/s;->c:I

    if-lt v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p0, Lb/y/a/s;->w:Z

    .line 30
    iget-boolean v6, p0, Lb/y/a/s;->v:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lb/y/a/s;->w:Z

    if-nez v6, :cond_3

    .line 31
    iget p1, p0, Lb/y/a/s;->x:I

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p0, v3}, Lb/y/a/s;->c(I)V

    :cond_2
    return-void

    .line 33
    :cond_3
    iget-boolean v3, p0, Lb/y/a/s;->v:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v7, v3, v6

    add-float/2addr p2, v7

    mul-float v3, v3, p2

    int-to-float p2, v0

    div-float/2addr v3, p2

    float-to-int p2, v3

    .line 34
    iput p2, p0, Lb/y/a/s;->n:I

    mul-int p2, v1, v1

    .line 35
    div-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lb/y/a/s;->m:I

    .line 36
    :cond_4
    iget-boolean p2, p0, Lb/y/a/s;->w:Z

    if-eqz p2, :cond_5

    int-to-float p1, p1

    int-to-float p2, v5

    div-float v0, p2, v6

    add-float/2addr p1, v0

    mul-float p2, p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 37
    iput p1, p0, Lb/y/a/s;->q:I

    mul-int p1, v5, v5

    .line 38
    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lb/y/a/s;->p:I

    .line 39
    :cond_5
    iget p1, p0, Lb/y/a/s;->x:I

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_7

    .line 40
    :cond_6
    invoke-virtual {p0, v4}, Lb/y/a/s;->c(I)V

    :cond_7
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 13
    iget v0, p0, Lb/y/a/s;->t:I

    .line 14
    iget v1, p0, Lb/y/a/s;->k:I

    sub-int/2addr v0, v1

    .line 15
    iget v2, p0, Lb/y/a/s;->q:I

    iget v3, p0, Lb/y/a/s;->p:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 16
    iget-object v4, p0, Lb/y/a/s;->i:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 17
    iget-object v1, p0, Lb/y/a/s;->j:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lb/y/a/s;->s:I

    iget v4, p0, Lb/y/a/s;->l:I

    .line 18
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, v0

    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    iget-object v1, p0, Lb/y/a/s;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 21
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v1, p0, Lb/y/a/s;->i:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v2

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/y/a/s;->b()V

    .line 3
    :cond_1
    iput-object p1, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object p1, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lb/y/a/s;->g()V

    :cond_2
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 4

    .line 41
    iget p1, p0, Lb/y/a/s;->x:I

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_4

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lb/y/a/s;->b(FF)Z

    move-result p1

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lb/y/a/s;->a(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    .line 45
    iput v0, p0, Lb/y/a/s;->y:I

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lb/y/a/s;->r:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 47
    iput v1, p0, Lb/y/a/s;->y:I

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lb/y/a/s;->o:F

    .line 49
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lb/y/a/s;->c(I)V

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lb/y/a/s;->x:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lb/y/a/s;->o:F

    .line 52
    iput p1, p0, Lb/y/a/s;->r:F

    .line 53
    invoke-virtual {p0, v0}, Lb/y/a/s;->c(I)V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lb/y/a/s;->y:I

    goto :goto_1

    .line 55
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget p1, p0, Lb/y/a/s;->x:I

    if-ne p1, v1, :cond_7

    .line 56
    invoke-virtual {p0}, Lb/y/a/s;->h()V

    .line 57
    iget p1, p0, Lb/y/a/s;->y:I

    if-ne p1, v0, :cond_6

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lb/y/a/s;->a(F)V

    .line 59
    :cond_6
    iget p1, p0, Lb/y/a/s;->y:I

    if-ne p1, v1, :cond_7

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lb/y/a/s;->b(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(FF)Z
    .locals 2

    .line 71
    iget v0, p0, Lb/y/a/s;->t:I

    iget v1, p0, Lb/y/a/s;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lb/y/a/s;->q:I

    iget v0, p0, Lb/y/a/s;->p:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 2
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 3
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lb/y/a/s;->E:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 4
    invoke-virtual {p0}, Lb/y/a/s;->a()V

    return-void
.end method

.method public final b(F)V
    .locals 8

    .line 44
    invoke-virtual {p0}, Lb/y/a/s;->d()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 45
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 46
    iget v0, p0, Lb/y/a/s;->n:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget v1, p0, Lb/y/a/s;->o:F

    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lb/y/a/s;->t:I

    move-object v0, p0

    move v2, p1

    .line 50
    invoke-virtual/range {v0 .. v6}, Lb/y/a/s;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 52
    :cond_1
    iput p1, p0, Lb/y/a/s;->o:F

    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lb/y/a/s;->a()V

    .line 6
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lb/y/a/s;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 17
    iget v0, p0, Lb/y/a/s;->s:I

    .line 18
    iget v1, p0, Lb/y/a/s;->g:I

    sub-int/2addr v0, v1

    .line 19
    iget v2, p0, Lb/y/a/s;->n:I

    iget v3, p0, Lb/y/a/s;->m:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 20
    iget-object v4, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 21
    iget-object v1, p0, Lb/y/a/s;->f:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lb/y/a/s;->h:I

    iget v4, p0, Lb/y/a/s;->t:I

    .line 22
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {p0}, Lb/y/a/s;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lb/y/a/s;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    iget v0, p0, Lb/y/a/s;->g:I

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 27
    iget-object v0, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    iget v0, p0, Lb/y/a/s;->g:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    iget-object v1, p0, Lb/y/a/s;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 32
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    iget-object v1, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 7
    iget p2, p0, Lb/y/a/s;->s:I

    iget-object p3, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Lb/y/a/s;->t:I

    iget-object p3, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lb/y/a/s;->C:I

    if-eqz p2, :cond_2

    .line 10
    iget-boolean p2, p0, Lb/y/a/s;->v:Z

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lb/y/a/s;->b(Landroid/graphics/Canvas;)V

    .line 12
    :cond_1
    iget-boolean p2, p0, Lb/y/a/s;->w:Z

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lb/y/a/s;->a(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lb/y/a/s;->s:I

    .line 15
    iget-object p1, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lb/y/a/s;->t:I

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lb/y/a/s;->c(I)V

    return-void
.end method

.method public b(FF)Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Lb/y/a/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/y/a/s;->g:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/y/a/s;->s:I

    iget v1, p0, Lb/y/a/s;->g:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Lb/y/a/s;->n:I

    iget v0, p0, Lb/y/a/s;->m:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 35
    iget p1, p0, Lb/y/a/s;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lb/y/a/s;->b(FF)Z

    move-result p1

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lb/y/a/s;->a(FF)Z

    move-result v3

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    .line 39
    iput v2, p0, Lb/y/a/s;->y:I

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lb/y/a/s;->r:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 41
    iput v1, p0, Lb/y/a/s;->y:I

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lb/y/a/s;->o:F

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lb/y/a/s;->c(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    :goto_1
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public c(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget v1, p0, Lb/y/a/s;->x:I

    if-eq v1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lb/y/a/s;->a:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 3
    invoke-virtual {p0}, Lb/y/a/s;->a()V

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lb/y/a/s;->f()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lb/y/a/s;->h()V

    .line 6
    :goto_0
    iget v1, p0, Lb/y/a/s;->x:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Lb/y/a/s;->e:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lb/y/a/s;->b:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    .line 8
    invoke-virtual {p0, v0}, Lb/y/a/s;->b(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    .line 9
    invoke-virtual {p0, v0}, Lb/y/a/s;->b(I)V

    .line 10
    :cond_3
    :goto_1
    iput p1, p0, Lb/y/a/s;->x:I

    return-void
.end method

.method public final c()[I
    .locals 3

    .line 11
    iget-object v0, p0, Lb/y/a/s;->A:[I

    iget v1, p0, Lb/y/a/s;->d:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 12
    iget v2, p0, Lb/y/a/s;->s:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method public final d()[I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/y/a/s;->z:[I

    iget v1, p0, Lb/y/a/s;->d:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget v2, p0, Lb/y/a/s;->t:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lb/i/k/z;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 2
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 3
    iget-object v0, p0, Lb/y/a/s;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lb/y/a/s;->E:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    iget v0, p0, Lb/y/a/s;->C:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lb/y/a/s;->C:I

    .line 4
    iget-object v1, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7
    iget-object v0, p0, Lb/y/a/s;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
