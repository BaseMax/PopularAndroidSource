.class public Lc/d/a/a/p;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/p$b;,
        Lc/d/a/a/p$a;
    }
.end annotation


# static fields
.field public static a:F = 3.0f

.field public static b:F = 1.75f

.field public static c:F = 1.0f

.field public static d:I = 0xc8

.field public static e:I = 0x1


# instance fields
.field public A:Lc/d/a/a/h;

.field public B:Lc/d/a/a/i;

.field public C:Lc/d/a/a/j;

.field public D:Lc/d/a/a/p$b;

.field public E:I

.field public F:I

.field public G:F

.field public H:Z

.field public I:Landroid/widget/ImageView$ScaleType;

.field public J:Lc/d/a/a/d;

.field public f:Landroid/view/animation/Interpolator;

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:Z

.field public l:Z

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/view/GestureDetector;

.field public o:Lc/d/a/a/c;

.field public final p:Landroid/graphics/Matrix;

.field public final q:Landroid/graphics/Matrix;

.field public final r:Landroid/graphics/Matrix;

.field public final s:Landroid/graphics/RectF;

.field public final t:[F

.field public u:Lc/d/a/a/e;

.field public v:Lc/d/a/a/g;

.field public w:Lc/d/a/a/f;

.field public x:Lc/d/a/a/k;

.field public y:Landroid/view/View$OnClickListener;

.field public z:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lc/d/a/a/p;->f:Landroid/view/animation/Interpolator;

    .line 3
    sget v0, Lc/d/a/a/p;->d:I

    iput v0, p0, Lc/d/a/a/p;->g:I

    .line 4
    sget v0, Lc/d/a/a/p;->c:F

    iput v0, p0, Lc/d/a/a/p;->h:F

    .line 5
    sget v0, Lc/d/a/a/p;->b:F

    iput v0, p0, Lc/d/a/a/p;->i:F

    .line 6
    sget v0, Lc/d/a/a/p;->a:F

    iput v0, p0, Lc/d/a/a/p;->j:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc/d/a/a/p;->k:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lc/d/a/a/p;->l:Z

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    .line 10
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lc/d/a/a/p;->q:Landroid/graphics/Matrix;

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc/d/a/a/p;->s:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 13
    new-array v1, v1, [F

    iput-object v1, p0, Lc/d/a/a/p;->t:[F

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lc/d/a/a/p;->E:I

    .line 15
    iput v1, p0, Lc/d/a/a/p;->F:I

    .line 16
    iput-boolean v0, p0, Lc/d/a/a/p;->H:Z

    .line 17
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    .line 18
    new-instance v0, Lc/d/a/a/l;

    invoke-direct {v0, p0}, Lc/d/a/a/l;-><init>(Lc/d/a/a/p;)V

    iput-object v0, p0, Lc/d/a/a/p;->J:Lc/d/a/a/d;

    .line 19
    iput-object p1, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lc/d/a/a/p;->G:F

    .line 24
    new-instance v0, Lc/d/a/a/c;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/a/p;->J:Lc/d/a/a/d;

    invoke-direct {v0, v1, v2}, Lc/d/a/a/c;-><init>(Landroid/content/Context;Lc/d/a/a/d;)V

    iput-object v0, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lc/d/a/a/m;

    invoke-direct {v1, p0}, Lc/d/a/a/m;-><init>(Lc/d/a/a/p;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lc/d/a/a/p;->n:Landroid/view/GestureDetector;

    .line 26
    iget-object p1, p0, Lc/d/a/a/p;->n:Landroid/view/GestureDetector;

    new-instance v0, Lc/d/a/a/n;

    invoke-direct {v0, p0}, Lc/d/a/a/n;-><init>(Lc/d/a/a/p;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public static synthetic a()F
    .locals 1

    .line 3
    sget v0, Lc/d/a/a/p;->c:F

    return v0
.end method

.method public static synthetic a(Lc/d/a/a/p;Landroid/widget/ImageView;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/d/a/a/p;->b(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lc/d/a/a/p;)Lc/d/a/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    return-object p0
.end method

.method public static synthetic a(Lc/d/a/a/p;Lc/d/a/a/p$b;)Lc/d/a/a/p$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lc/d/a/a/p;->D:Lc/d/a/a/p$b;

    return-object p1
.end method

.method public static synthetic b()I
    .locals 1

    .line 3
    sget v0, Lc/d/a/a/p;->e:I

    return v0
.end method

.method public static synthetic b(Lc/d/a/a/p;Landroid/widget/ImageView;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/d/a/a/p;->a(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lc/d/a/a/p;)Lc/d/a/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->C:Lc/d/a/a/j;

    return-object p0
.end method

.method public static synthetic c(Lc/d/a/a/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/a/p;->j:F

    return p0
.end method

.method public static synthetic d(Lc/d/a/a/p;)Lc/d/a/a/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->A:Lc/d/a/a/h;

    return-object p0
.end method

.method public static synthetic e(Lc/d/a/a/p;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->z:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public static synthetic f(Lc/d/a/a/p;)Lc/d/a/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->B:Lc/d/a/a/i;

    return-object p0
.end method

.method public static synthetic g(Lc/d/a/a/p;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->y:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic h(Lc/d/a/a/p;)Lc/d/a/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->x:Lc/d/a/a/k;

    return-object p0
.end method

.method public static synthetic i(Lc/d/a/a/p;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic j(Lc/d/a/a/p;)Lc/d/a/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->v:Lc/d/a/a/g;

    return-object p0
.end method

.method public static synthetic k(Lc/d/a/a/p;)Lc/d/a/a/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->w:Lc/d/a/a/f;

    return-object p0
.end method

.method public static synthetic l(Lc/d/a/a/p;)Lc/d/a/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->J:Lc/d/a/a/d;

    return-object p0
.end method

.method public static synthetic m(Lc/d/a/a/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/a/p;->g:I

    return p0
.end method

.method public static synthetic n(Lc/d/a/a/p;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->f:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic o(Lc/d/a/a/p;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/d/a/a/p;->d()V

    return-void
.end method

.method public static synthetic p(Lc/d/a/a/p;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic q(Lc/d/a/a/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/a/p;->k:Z

    return p0
.end method

.method public static synthetic r(Lc/d/a/a/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/a/p;->l:Z

    return p0
.end method

.method public static synthetic s(Lc/d/a/a/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/a/p;->E:I

    return p0
.end method

.method public static synthetic t(Lc/d/a/a/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/a/p;->F:I

    return p0
.end method

.method public static synthetic u(Lc/d/a/a/p;)Lc/d/a/a/p$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/a/p;->D:Lc/d/a/a/p$b;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 31
    iget-object v0, p0, Lc/d/a/a/p;->t:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 32
    iget-object p1, p0, Lc/d/a/a/p;->t:[F

    aget p1, p1, p2

    return p1
.end method

.method public final a(Landroid/widget/ImageView;)I
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 33
    iget-object v0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lc/d/a/a/p;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    iget-object v0, p0, Lc/d/a/a/p;->s:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 38
    iget-object p1, p0, Lc/d/a/a/p;->s:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)V
    .locals 2

    .line 9
    iget v0, p0, Lc/d/a/a/p;->h:F

    iget v1, p0, Lc/d/a/a/p;->i:F

    invoke-static {v0, v1, p1}, Lc/d/a/a/r;->a(FFF)V

    .line 10
    iput p1, p0, Lc/d/a/a/p;->j:F

    return-void
.end method

.method public a(FFFZ)V
    .locals 7

    .line 22
    iget v0, p0, Lc/d/a/a/p;->h:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lc/d/a/a/p;->j:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 23
    iget-object p4, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    new-instance v6, Lc/d/a/a/p$a;

    invoke-virtual {p0}, Lc/d/a/a/p;->l()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lc/d/a/a/p$a;-><init>(Lc/d/a/a/p;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 24
    :cond_0
    iget-object p4, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 25
    invoke-virtual {p0}, Lc/d/a/a/p;->d()V

    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(FZ)V
    .locals 2

    .line 18
    iget-object v0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 21
    invoke-virtual {p0, p1, v0, v1, p2}, Lc/d/a/a/p;->a(FFFZ)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 30
    iput p1, p0, Lc/d/a/a/p;->g:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->b(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 40
    iget-object v1, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lc/d/a/a/p;->a(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 41
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 42
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 43
    iget-object v3, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 44
    iget-object v5, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 45
    iget-object v3, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 46
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 48
    iget-object v4, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 49
    iget-object v4, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 50
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 52
    iget-object v4, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 53
    iget-object v4, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 54
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 55
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    iget v0, p0, Lc/d/a/a/p;->G:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 57
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    :cond_4
    sget-object p1, Lc/d/a/a/o;->a:[I

    iget-object v0, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 59
    :cond_5
    iget-object p1, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 60
    :cond_6
    iget-object p1, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 61
    :cond_7
    iget-object p1, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 62
    :cond_8
    iget-object p1, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 63
    :goto_0
    invoke-virtual {p0}, Lc/d/a/a/p;->n()V

    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/d/a/a/p;->n:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lc/d/a/a/p;->y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lc/d/a/a/p;->z:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 27
    invoke-static {p1}, Lc/d/a/a/r;->a(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 28
    iput-object p1, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    .line 29
    invoke-virtual {p0}, Lc/d/a/a/p;->o()V

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/a/e;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lc/d/a/a/p;->u:Lc/d/a/a/e;

    return-void
.end method

.method public a(Lc/d/a/a/f;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lc/d/a/a/p;->w:Lc/d/a/a/f;

    return-void
.end method

.method public a(Lc/d/a/a/g;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lc/d/a/a/p;->v:Lc/d/a/a/g;

    return-void
.end method

.method public a(Lc/d/a/a/h;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lc/d/a/a/p;->A:Lc/d/a/a/h;

    return-void
.end method

.method public a(Lc/d/a/a/i;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lc/d/a/a/p;->B:Lc/d/a/a/i;

    return-void
.end method

.method public a(Lc/d/a/a/j;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lc/d/a/a/p;->C:Lc/d/a/a/j;

    return-void
.end method

.method public a(Lc/d/a/a/k;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lc/d/a/a/p;->x:Lc/d/a/a/k;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lc/d/a/a/p;->k:Z

    return-void
.end method

.method public final b(Landroid/widget/ImageView;)I
    .locals 2

    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public b(F)V
    .locals 2

    .line 8
    iget v0, p0, Lc/d/a/a/p;->h:F

    iget v1, p0, Lc/d/a/a/p;->j:F

    invoke-static {v0, p1, v1}, Lc/d/a/a/r;->a(FFF)V

    .line 9
    iput p1, p0, Lc/d/a/a/p;->i:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lc/d/a/a/p;->H:Z

    .line 11
    invoke-virtual {p0}, Lc/d/a/a/p;->o()V

    return-void
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    invoke-virtual {p0}, Lc/d/a/a/p;->d()V

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 1

    .line 8
    iget-object v0, p0, Lc/d/a/a/p;->D:Lc/d/a/a/p$b;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lc/d/a/a/p$b;->a()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lc/d/a/a/p;->D:Lc/d/a/a/p$b;

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 2

    .line 2
    iget v0, p0, Lc/d/a/a/p;->i:F

    iget v1, p0, Lc/d/a/a/p;->j:F

    invoke-static {p1, v0, v1}, Lc/d/a/a/r;->a(FFF)V

    .line 3
    iput p1, p0, Lc/d/a/a/p;->h:F

    return-void
.end method

.method public final c(Landroid/graphics/Matrix;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 5
    iget-object v0, p0, Lc/d/a/a/p;->u:Lc/d/a/a/e;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lc/d/a/a/p;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lc/d/a/a/p;->u:Lc/d/a/a/e;

    invoke-interface {v0, p1}, Lc/d/a/a/e;->a(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lc/d/a/a/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/d/a/a/p;->g()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->c(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3
    invoke-virtual {p0}, Lc/d/a/a/p;->d()V

    return-void
.end method

.method public e(F)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3
    invoke-virtual {p0}, Lc/d/a/a/p;->d()V

    return-void
.end method

.method public final e()Z
    .locals 13

    .line 4
    invoke-virtual {p0}, Lc/d/a/a/p;->g()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 6
    iget-object v4, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lc/d/a/a/p;->a(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_3

    .line 7
    sget-object v11, Lc/d/a/a/o;->a:[I

    iget-object v12, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_2

    if-eq v11, v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v2

    .line 9
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 10
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    move v4, v2

    .line 11
    :goto_1
    iput v9, p0, Lc/d/a/a/p;->F:I

    move v2, v4

    goto :goto_2

    .line 12
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v2, v10

    if-lez v11, :cond_4

    .line 13
    iput v1, p0, Lc/d/a/a/p;->F:I

    neg-float v2, v2

    goto :goto_2

    .line 14
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v2, v4

    if-gez v11, :cond_5

    .line 15
    iput v8, p0, Lc/d/a/a/p;->F:I

    sub-float v2, v4, v2

    goto :goto_2

    .line 16
    :cond_5
    iput v5, p0, Lc/d/a/a/p;->F:I

    const/4 v2, 0x0

    .line 17
    :goto_2
    iget-object v4, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lc/d/a/a/p;->b(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v11, v3, v4

    if-gtz v11, :cond_8

    .line 18
    sget-object v1, Lc/d/a/a/o;->a:[I

    iget-object v5, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    sub-float/2addr v4, v3

    div-float/2addr v4, v6

    .line 19
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v4, v0

    move v10, v4

    goto :goto_4

    :cond_6
    sub-float/2addr v4, v3

    .line 20
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    .line 21
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 22
    :goto_4
    iput v9, p0, Lc/d/a/a/p;->E:I

    goto :goto_5

    .line 23
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v3, v10

    if-lez v6, :cond_9

    .line 24
    iput v1, p0, Lc/d/a/a/p;->E:I

    neg-float v10, v3

    goto :goto_5

    .line 25
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v4

    if-gez v1, :cond_a

    sub-float v10, v4, v0

    .line 26
    iput v8, p0, Lc/d/a/a/p;->E:I

    goto :goto_5

    .line 27
    :cond_a
    iput v5, p0, Lc/d/a/a/p;->E:I

    .line 28
    :goto_5
    iget-object v0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method public f()Landroid/graphics/RectF;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/d/a/a/p;->e()Z

    .line 3
    invoke-virtual {p0}, Lc/d/a/a/p;->g()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public f(F)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lc/d/a/a/p;->a(FZ)V

    return-void
.end method

.method public final g()Landroid/graphics/Matrix;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/d/a/a/p;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lc/d/a/a/p;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4
    iget-object v0, p0, Lc/d/a/a/p;->q:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public h()Landroid/graphics/Matrix;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->q:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public i()F
    .locals 1

    .line 2
    iget v0, p0, Lc/d/a/a/p;->j:F

    return v0
.end method

.method public j()F
    .locals 1

    .line 2
    iget v0, p0, Lc/d/a/a/p;->i:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 2
    iget v0, p0, Lc/d/a/a/p;->h:F

    return v0
.end method

.method public l()F
    .locals 6

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc/d/a/a/p;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 3
    invoke-virtual {p0, v1, v4}, Lc/d/a/a/p;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public m()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->I:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/a/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget v0, p0, Lc/d/a/a/p;->G:F

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->d(F)V

    .line 4
    invoke-virtual {p0}, Lc/d/a/a/p;->g()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->c(Landroid/graphics/Matrix;)V

    .line 5
    invoke-virtual {p0}, Lc/d/a/a/p;->e()Z

    return-void
.end method

.method public o()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lc/d/a/a/p;->H:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/a/p;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/d/a/a/p;->n()V

    :goto_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lc/d/a/a/p;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/a/p;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/p;->H:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lc/d/a/a/r;->a(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/d/a/a/p;->l()F

    move-result v0

    iget v3, p0, Lc/d/a/a/p;->h:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/d/a/a/p;->f()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v9, Lc/d/a/a/p$a;

    invoke-virtual {p0}, Lc/d/a/a/p;->l()F

    move-result v5

    iget v6, p0, Lc/d/a/a/p;->h:F

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lc/d/a/a/p$a;-><init>(Lc/d/a/a/p;FFFF)V

    .line 7
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lc/d/a/a/p;->l()F

    move-result v0

    iget v3, p0, Lc/d/a/a/p;->j:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lc/d/a/a/p;->f()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v9, Lc/d/a/a/p$a;

    invoke-virtual {p0}, Lc/d/a/a/p;->l()F

    move-result v5

    iget v6, p0, Lc/d/a/a/p;->j:F

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lc/d/a/a/p$a;-><init>(Lc/d/a/a/p;FFFF)V

    .line 12
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Lc/d/a/a/p;->c()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 16
    :goto_2
    iget-object v0, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0}, Lc/d/a/a/c;->b()Z

    move-result p1

    .line 18
    iget-object v0, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    invoke-virtual {v0}, Lc/d/a/a/c;->a()Z

    move-result v0

    .line 19
    iget-object v3, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    invoke-virtual {v3, p2}, Lc/d/a/a/c;->c(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    invoke-virtual {p1}, Lc/d/a/a/c;->b()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Lc/d/a/a/p;->o:Lc/d/a/a/c;

    invoke-virtual {v0}, Lc/d/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 22
    :cond_7
    iput-boolean v1, p0, Lc/d/a/a/p;->l:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    .line 23
    :goto_5
    iget-object p1, p0, Lc/d/a/a/p;->n:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method
