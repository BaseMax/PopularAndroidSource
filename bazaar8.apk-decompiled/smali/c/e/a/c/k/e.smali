.class public Lc/e/a/c/k/e;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/c/k/e$a;,
        Lc/e/a/c/k/e$c;,
        Lc/e/a/c/k/e$b;,
        Lc/e/a/c/k/e$e;,
        Lc/e/a/c/k/e$f;,
        Lc/e/a/c/k/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Lc/e/a/c/l/r;

.field public final C:Lc/e/a/c/q/b;

.field public final D:Landroid/graphics/Rect;

.field public final E:Landroid/graphics/RectF;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/Matrix;

.field public H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public h:I

.field public i:Landroid/animation/Animator;

.field public j:Lc/e/a/c/a/h;

.field public k:Lc/e/a/c/a/h;

.field public l:Lc/e/a/c/a/h;

.field public m:Lc/e/a/c/a/h;

.field public final n:Lc/e/a/c/l/m;

.field public o:Lc/e/a/c/q/a;

.field public p:F

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Lc/e/a/c/l/c;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:F

.field public v:F

.field public w:F

.field public x:I

.field public y:F

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lc/e/a/c/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lc/e/a/c/k/e;->a:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lc/e/a/c/k/e;->b:[I

    const/4 v1, 0x3

    .line 3
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lc/e/a/c/k/e;->c:[I

    .line 4
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lc/e/a/c/k/e;->d:[I

    .line 5
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lc/e/a/c/k/e;->e:[I

    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lc/e/a/c/k/e;->f:[I

    .line 7
    new-array v0, v1, [I

    sput-object v0, Lc/e/a/c/k/e;->g:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lc/e/a/c/l/r;Lc/e/a/c/q/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/a/c/k/e;->h:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lc/e/a/c/k/e;->y:F

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/e/a/c/k/e;->D:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/e/a/c/k/e;->E:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/e/a/c/k/e;->F:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/e/a/c/k/e;->G:Landroid/graphics/Matrix;

    .line 8
    iput-object p1, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    .line 9
    iput-object p2, p0, Lc/e/a/c/k/e;->C:Lc/e/a/c/q/b;

    .line 10
    new-instance p1, Lc/e/a/c/l/m;

    invoke-direct {p1}, Lc/e/a/c/l/m;-><init>()V

    iput-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    .line 11
    iget-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    sget-object p2, Lc/e/a/c/k/e;->b:[I

    new-instance v0, Lc/e/a/c/k/e$c;

    invoke-direct {v0, p0}, Lc/e/a/c/k/e$c;-><init>(Lc/e/a/c/k/e;)V

    .line 12
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 13
    invoke-virtual {p1, p2, v0}, Lc/e/a/c/l/m;->a([ILandroid/animation/ValueAnimator;)V

    .line 14
    iget-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    sget-object p2, Lc/e/a/c/k/e;->c:[I

    new-instance v0, Lc/e/a/c/k/e$b;

    invoke-direct {v0, p0}, Lc/e/a/c/k/e$b;-><init>(Lc/e/a/c/k/e;)V

    .line 15
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 16
    invoke-virtual {p1, p2, v0}, Lc/e/a/c/l/m;->a([ILandroid/animation/ValueAnimator;)V

    .line 17
    iget-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    sget-object p2, Lc/e/a/c/k/e;->d:[I

    new-instance v0, Lc/e/a/c/k/e$b;

    invoke-direct {v0, p0}, Lc/e/a/c/k/e$b;-><init>(Lc/e/a/c/k/e;)V

    .line 18
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {p1, p2, v0}, Lc/e/a/c/l/m;->a([ILandroid/animation/ValueAnimator;)V

    .line 20
    iget-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    sget-object p2, Lc/e/a/c/k/e;->e:[I

    new-instance v0, Lc/e/a/c/k/e$b;

    invoke-direct {v0, p0}, Lc/e/a/c/k/e$b;-><init>(Lc/e/a/c/k/e;)V

    .line 21
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 22
    invoke-virtual {p1, p2, v0}, Lc/e/a/c/l/m;->a([ILandroid/animation/ValueAnimator;)V

    .line 23
    iget-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    sget-object p2, Lc/e/a/c/k/e;->f:[I

    new-instance v0, Lc/e/a/c/k/e$e;

    invoke-direct {v0, p0}, Lc/e/a/c/k/e$e;-><init>(Lc/e/a/c/k/e;)V

    .line 24
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 25
    invoke-virtual {p1, p2, v0}, Lc/e/a/c/l/m;->a([ILandroid/animation/ValueAnimator;)V

    .line 26
    iget-object p1, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    sget-object p2, Lc/e/a/c/k/e;->g:[I

    new-instance v0, Lc/e/a/c/k/e$a;

    invoke-direct {v0, p0}, Lc/e/a/c/k/e$a;-><init>(Lc/e/a/c/k/e;)V

    .line 27
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 28
    invoke-virtual {p1, p2, v0}, Lc/e/a/c/l/m;->a([ILandroid/animation/ValueAnimator;)V

    .line 29
    iget-object p1, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lc/e/a/c/k/e;->p:F

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/c/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v1, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 64
    invoke-virtual {p1, v1}, Lc/e/a/c/a/h;->a(Ljava/lang/String;)Lc/e/a/c/a/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc/e/a/c/a/i;->a(Landroid/animation/Animator;)V

    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 67
    invoke-virtual {p1, v1}, Lc/e/a/c/a/h;->a(Ljava/lang/String;)Lc/e/a/c/a/i;

    move-result-object v2

    invoke-virtual {v2, p2}, Lc/e/a/c/a/i;->a(Landroid/animation/Animator;)V

    .line 68
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 70
    invoke-virtual {p1, v1}, Lc/e/a/c/a/h;->a(Ljava/lang/String;)Lc/e/a/c/a/i;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/c/a/i;->a(Landroid/animation/Animator;)V

    .line 71
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p2, p0, Lc/e/a/c/k/e;->G:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p2}, Lc/e/a/c/k/e;->a(FLandroid/graphics/Matrix;)V

    .line 73
    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    new-instance p3, Lc/e/a/c/a/f;

    invoke-direct {p3}, Lc/e/a/c/a/f;-><init>()V

    new-instance p4, Lc/e/a/c/a/g;

    invoke-direct {p4}, Lc/e/a/c/a/g;-><init>()V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lc/e/a/c/k/e;->G:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 74
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    .line 75
    invoke-virtual {p1, p3}, Lc/e/a/c/a/h;->a(Ljava/lang/String;)Lc/e/a/c/a/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc/e/a/c/a/i;->a(Landroid/animation/Animator;)V

    .line 76
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    invoke-static {p1, v0}, Lc/e/a/c/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lc/e/a/c/k/e$f;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 93
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 94
    sget-object v1, Lc/e/a/c/k/e;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    .line 98
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lc/e/a/c/k/e;->o()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public a(ILandroid/content/res/ColorStateList;)Lc/e/a/c/l/c;
    .locals 6

    .line 80
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lc/e/a/c/k/e;->n()Lc/e/a/c/l/c;

    move-result-object v1

    .line 82
    sget v2, Lc/e/a/c/c;->design_fab_stroke_top_outer_color:I

    .line 83
    invoke-static {v0, v2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lc/e/a/c/c;->design_fab_stroke_top_inner_color:I

    .line 84
    invoke-static {v0, v3}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lc/e/a/c/c;->design_fab_stroke_end_inner_color:I

    .line 85
    invoke-static {v0, v4}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lc/e/a/c/c;->design_fab_stroke_end_outer_color:I

    .line 86
    invoke-static {v0, v5}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 87
    invoke-virtual {v1, v2, v3, v4, v0}, Lc/e/a/c/l/c;->a(IIII)V

    int-to-float p1, p1

    .line 88
    invoke-virtual {v1, p1}, Lc/e/a/c/l/c;->a(F)V

    .line 89
    invoke-virtual {v1, p2}, Lc/e/a/c/l/c;->a(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method

.method public final a(F)V
    .locals 2

    .line 25
    iget v0, p0, Lc/e/a/c/k/e;->u:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 26
    iput p1, p0, Lc/e/a/c/k/e;->u:F

    .line 27
    iget p1, p0, Lc/e/a/c/k/e;->u:F

    iget v0, p0, Lc/e/a/c/k/e;->v:F

    iget v1, p0, Lc/e/a/c/k/e;->w:F

    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/c/k/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method public a(FFF)V
    .locals 0

    .line 41
    iget-object p2, p0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    if-eqz p2, :cond_0

    .line 42
    iget p3, p0, Lc/e/a/c/k/e;->w:F

    add-float/2addr p3, p1

    invoke-virtual {p2, p1, p3}, Lc/e/a/c/q/a;->a(FF)V

    .line 43
    invoke-virtual {p0}, Lc/e/a/c/k/e;->x()V

    :cond_0
    return-void
.end method

.method public final a(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 32
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget v1, p0, Lc/e/a/c/k/e;->x:I

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lc/e/a/c/k/e;->E:Landroid/graphics/RectF;

    .line 35
    iget-object v2, p0, Lc/e/a/c/k/e;->F:Landroid/graphics/RectF;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    iget v0, p0, Lc/e/a/c/k/e;->x:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 39
    iget v0, p0, Lc/e/a/c/k/e;->x:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 28
    iget v0, p0, Lc/e/a/c/k/e;->x:I

    if-eq v0, p1, :cond_0

    .line 29
    iput p1, p0, Lc/e/a/c/k/e;->x:I

    .line 30
    invoke-virtual {p0}, Lc/e/a/c/k/e;->w()V

    :cond_0
    return-void
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lc/e/a/c/k/e;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/c/k/e;->A:Ljava/util/ArrayList;

    .line 47
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->s:Lc/e/a/c/l/c;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Lc/e/a/c/l/c;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc/e/a/c/k/e;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Lb/i/c/a/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/e/a/c/k/e;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lb/i/c/a/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/c/k/e;->r:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p2, p0, Lc/e/a/c/k/e;->r:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p3}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 8
    invoke-static {p2, p3}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-lez p4, :cond_1

    .line 9
    invoke-virtual {p0, p4, p1}, Lc/e/a/c/k/e;->a(ILandroid/content/res/ColorStateList;)Lc/e/a/c/l/c;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/c/k/e;->s:Lc/e/a/c/l/c;

    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lc/e/a/c/k/e;->s:Lc/e/a/c/l/c;

    aput-object p4, p1, v0

    iget-object p4, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    aput-object p4, p1, p2

    iget-object p2, p0, Lc/e/a/c/k/e;->r:Landroid/graphics/drawable/Drawable;

    aput-object p2, p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lc/e/a/c/k/e;->s:Lc/e/a/c/l/c;

    .line 12
    new-array p1, p3, [Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    aput-object p3, p1, v0

    iget-object p3, p0, Lc/e/a/c/k/e;->r:Landroid/graphics/drawable/Drawable;

    aput-object p3, p1, p2

    .line 13
    :goto_0
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lc/e/a/c/k/e;->t:Landroid/graphics/drawable/Drawable;

    .line 14
    new-instance p1, Lc/e/a/c/q/a;

    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    .line 15
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/c/k/e;->t:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lc/e/a/c/k/e;->C:Lc/e/a/c/q/b;

    .line 16
    invoke-interface {p2}, Lc/e/a/c/q/b;->b()F

    move-result v4

    iget v5, p0, Lc/e/a/c/k/e;->u:F

    iget p2, p0, Lc/e/a/c/k/e;->w:F

    add-float v6, v5, p2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lc/e/a/c/q/a;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object p1, p0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    .line 17
    iget-object p1, p0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    invoke-virtual {p1, v0}, Lc/e/a/c/q/a;->a(Z)V

    .line 18
    iget-object p1, p0, Lc/e/a/c/k/e;->C:Lc/e/a/c/q/b;

    iget-object p2, p0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    invoke-interface {p1, p2}, Lc/e/a/c/q/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lc/e/a/c/k/e;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 24
    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    invoke-virtual {v0, p1}, Lc/e/a/c/q/a;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public final a(Lc/e/a/c/a/h;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lc/e/a/c/k/e;->k:Lc/e/a/c/a/h;

    return-void
.end method

.method public a(Lc/e/a/c/k/e$d;Z)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lc/e/a/c/k/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lc/e/a/c/k/e;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lc/e/a/c/k/e;->k:Lc/e/a/c/a/h;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lc/e/a/c/k/e;->d()Lc/e/a/c/a/h;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1, v1, v1}, Lc/e/a/c/k/e;->a(Lc/e/a/c/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 55
    new-instance v1, Lc/e/a/c/k/b;

    invoke-direct {v1, p0, p2, p1}, Lc/e/a/c/k/b;-><init>(Lc/e/a/c/k/e;ZLc/e/a/c/k/e$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    iget-object p1, p0, Lc/e/a/c/k/e;->A:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 58
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 60
    :cond_4
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1, p2}, Lc/e/a/c/l/r;->a(IZ)V

    if-eqz p1, :cond_6

    .line 61
    invoke-interface {p1}, Lc/e/a/c/k/e$d;->b()V

    :cond_6
    :goto_3
    return-void
.end method

.method public a([I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    invoke-virtual {v0, p1}, Lc/e/a/c/l/m;->a([I)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 34
    iget-object v0, p0, Lc/e/a/c/k/e;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lc/e/a/c/k/d;

    invoke-direct {v0, p0}, Lc/e/a/c/k/d;-><init>(Lc/e/a/c/k/e;)V

    iput-object v0, p0, Lc/e/a/c/k/e;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 2

    .line 4
    iget v0, p0, Lc/e/a/c/k/e;->v:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 5
    iput p1, p0, Lc/e/a/c/k/e;->v:F

    .line 6
    iget p1, p0, Lc/e/a/c/k/e;->u:F

    iget v0, p0, Lc/e/a/c/k/e;->v:F

    iget v1, p0, Lc/e/a/c/k/e;->w:F

    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/c/k/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lc/e/a/c/k/e;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/c/k/e;->z:Ljava/util/ArrayList;

    .line 10
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final b(Lc/e/a/c/a/h;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lc/e/a/c/k/e;->j:Lc/e/a/c/a/h;

    return-void
.end method

.method public b(Lc/e/a/c/k/e$d;Z)V
    .locals 3

    .line 11
    invoke-virtual {p0}, Lc/e/a/c/k/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lc/e/a/c/k/e;->u()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 17
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 18
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 19
    invoke-virtual {p0, v2}, Lc/e/a/c/k/e;->c(F)V

    .line 20
    :cond_2
    iget-object v0, p0, Lc/e/a/c/k/e;->j:Lc/e/a/c/a/h;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lc/e/a/c/k/e;->e()Lc/e/a/c/a/h;

    move-result-object v0

    .line 22
    :goto_0
    invoke-virtual {p0, v0, v1, v1, v1}, Lc/e/a/c/k/e;->a(Lc/e/a/c/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 23
    new-instance v1, Lc/e/a/c/k/c;

    invoke-direct {v1, p0, p2, p1}, Lc/e/a/c/k/c;-><init>(Lc/e/a/c/k/e;ZLc/e/a/c/k/e$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iget-object p1, p0, Lc/e/a/c/k/e;->z:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 26
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 28
    :cond_5
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lc/e/a/c/l/r;->a(IZ)V

    .line 29
    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 30
    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 31
    iget-object p2, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 32
    invoke-virtual {p0, v1}, Lc/e/a/c/k/e;->c(F)V

    if-eqz p1, :cond_6

    .line 33
    invoke-interface {p1}, Lc/e/a/c/k/e$d;->a()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/c/k/e;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c(F)V
    .locals 1

    .line 1
    iput p1, p0, Lc/e/a/c/k/e;->y:F

    .line 2
    iget-object v0, p0, Lc/e/a/c/k/e;->G:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p0, p1, v0}, Lc/e/a/c/k/e;->a(FLandroid/graphics/Matrix;)V

    .line 4
    iget-object p1, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/c/k/e;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Lc/e/a/c/a/h;
    .locals 2

    .line 6
    iget-object v0, p0, Lc/e/a/c/k/e;->m:Lc/e/a/c/a/h;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lc/e/a/c/a;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lc/e/a/c/a/h;->a(Landroid/content/Context;I)Lc/e/a/c/a/h;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/k/e;->m:Lc/e/a/c/a/h;

    .line 9
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->m:Lc/e/a/c/a/h;

    return-object v0
.end method

.method public final d(F)V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/c/k/e;->w:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lc/e/a/c/k/e;->w:F

    .line 3
    iget p1, p0, Lc/e/a/c/k/e;->u:F

    iget v0, p0, Lc/e/a/c/k/e;->v:F

    iget v1, p0, Lc/e/a/c/k/e;->w:F

    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/c/k/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/c/k/e;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Lc/e/a/c/a/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->l:Lc/e/a/c/a/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lc/e/a/c/a;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lc/e/a/c/a/h;->a(Landroid/content/Context;I)Lc/e/a/c/a/h;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/k/e;->l:Lc/e/a/c/a/h;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->l:Lc/e/a/c/a/h;

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/k/e;->u:F

    return v0
.end method

.method public final g()Lc/e/a/c/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->k:Lc/e/a/c/a/h;

    return-object v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/k/e;->v:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/k/e;->w:F

    return v0
.end method

.method public final j()Lc/e/a/c/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->j:Lc/e/a/c/a/h;

    return-object v0
.end method

.method public k()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lc/e/a/c/k/e;->h:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Lc/e/a/c/k/e;->h:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public l()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lc/e/a/c/k/e;->h:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Lc/e/a/c/k/e;->h:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->n:Lc/e/a/c/l/m;

    invoke-virtual {v0}, Lc/e/a/c/l/m;->b()V

    return-void
.end method

.method public n()Lc/e/a/c/l/c;
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/c/l/c;

    invoke-direct {v0}, Lc/e/a/c/l/c;-><init>()V

    return-object v0
.end method

.method public o()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/c/k/e;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/c/k/e;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/c/k/e;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/c/k/e;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/c/k/e;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getRotation()F

    move-result v0

    .line 2
    iget v1, p0, Lc/e/a/c/k/e;->p:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iput v0, p0, Lc/e/a/c/k/e;->p:F

    .line 4
    invoke-virtual {p0}, Lc/e/a/c/k/e;->v()V

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-static {v0}, Lb/i/k/z;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lc/e/a/c/k/e;->p:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/e/a/c/k/e;->o:Lc/e/a/c/q/a;

    if-eqz v0, :cond_2

    .line 8
    iget v1, p0, Lc/e/a/c/k/e;->p:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lc/e/a/c/q/a;->a(F)V

    .line 9
    :cond_2
    iget-object v0, p0, Lc/e/a/c/k/e;->s:Lc/e/a/c/l/c;

    if-eqz v0, :cond_3

    .line 10
    iget v1, p0, Lc/e/a/c/k/e;->p:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lc/e/a/c/l/c;->b(F)V

    :cond_3
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/k/e;->y:F

    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->c(F)V

    return-void
.end method

.method public final x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e;->D:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->a(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0, v0}, Lc/e/a/c/k/e;->b(Landroid/graphics/Rect;)V

    .line 4
    iget-object v1, p0, Lc/e/a/c/k/e;->C:Lc/e/a/c/q/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lc/e/a/c/q/b;->a(IIII)V

    return-void
.end method
