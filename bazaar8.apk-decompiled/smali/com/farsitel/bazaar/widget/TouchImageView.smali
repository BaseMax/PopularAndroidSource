.class public Lcom/farsitel/bazaar/widget/TouchImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/widget/TouchImageView$h;,
        Lcom/farsitel/bazaar/widget/TouchImageView$a;,
        Lcom/farsitel/bazaar/widget/TouchImageView$c;,
        Lcom/farsitel/bazaar/widget/TouchImageView$b;,
        Lcom/farsitel/bazaar/widget/TouchImageView$g;,
        Lcom/farsitel/bazaar/widget/TouchImageView$f;,
        Lcom/farsitel/bazaar/widget/TouchImageView$e;,
        Lcom/farsitel/bazaar/widget/TouchImageView$d;,
        Lcom/farsitel/bazaar/widget/TouchImageView$State;,
        Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:Landroid/view/ScaleGestureDetector;

.field public I:Landroid/view/GestureDetector;

.field public J:Landroid/view/GestureDetector$OnDoubleTapListener;

.field public K:Landroid/view/View$OnTouchListener;

.field public L:Lcom/farsitel/bazaar/widget/TouchImageView$e;

.field public c:F

.field public d:Landroid/graphics/Matrix;

.field public e:Landroid/graphics/Matrix;

.field public f:Z

.field public g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

.field public h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

.field public i:Z

.field public j:Lcom/farsitel/bazaar/widget/TouchImageView$State;

.field public k:F

.field public l:F

.field public m:Z

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:[F

.field public s:Landroid/content/Context;

.field public t:Lcom/farsitel/bazaar/widget/TouchImageView$c;

.field public u:I

.field public v:Landroid/widget/ImageView$ScaleType;

.field public w:Z

.field public x:Z

.field public y:Lcom/farsitel/bazaar/widget/TouchImageView$h;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->CENTER:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    .line 5
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->m:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->J:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 9
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->K:Landroid/view/View$OnTouchListener;

    .line 10
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->L:Lcom/farsitel/bazaar/widget/TouchImageView$e;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;FFF)F
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->H:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$c;)Lcom/farsitel/bazaar/widget/TouchImageView$c;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->t:Lcom/farsitel/bazaar/widget/TouchImageView$c;

    return-object p1
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;DFFZ)V
    .locals 0

    .line 4
    invoke-virtual/range {p0 .. p5}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(DFFZ)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->setState(Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->I:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static synthetic c(Lcom/farsitel/bazaar/widget/TouchImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    return p0
.end method

.method public static synthetic d(Lcom/farsitel/bazaar/widget/TouchImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/farsitel/bazaar/widget/TouchImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    return p0
.end method

.method public static synthetic f(Lcom/farsitel/bazaar/widget/TouchImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private getImageHeight()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->E:F

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->D:F

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static synthetic h(Lcom/farsitel/bazaar/widget/TouchImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->e()V

    return-void
.end method

.method public static synthetic i(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->K:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public static synthetic j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->L:Lcom/farsitel/bazaar/widget/TouchImageView$e;

    return-object p0
.end method

.method public static synthetic k(Lcom/farsitel/bazaar/widget/TouchImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->d()V

    return-void
.end method

.method public static synthetic l(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->s:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic m(Lcom/farsitel/bazaar/widget/TouchImageView;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    return-object p0
.end method

.method public static synthetic n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->J:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method public static synthetic o(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->t:Lcom/farsitel/bazaar/widget/TouchImageView$c;

    return-object p0
.end method

.method public static synthetic p(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->j:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    return-object p0
.end method

.method public static synthetic q(Lcom/farsitel/bazaar/widget/TouchImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    return p0
.end method

.method public static synthetic r(Lcom/farsitel/bazaar/widget/TouchImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    return p0
.end method

.method public static synthetic s(Lcom/farsitel/bazaar/widget/TouchImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    return p0
.end method

.method private setState(Lcom/farsitel/bazaar/widget/TouchImageView$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->j:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    return-void
.end method


# virtual methods
.method public final a(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public final a(FFFIIILcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;)F
    .locals 2

    int-to-float p5, p5

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p3, p5

    if-gez v1, :cond_0

    int-to-float p1, p6

    .line 96
    iget-object p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 p3, 0x0

    aget p2, p2, p3

    mul-float p1, p1, p2

    sub-float/2addr p5, p1

    mul-float p5, p5, v0

    return p5

    :cond_0
    const/4 p6, 0x0

    cmpl-float v1, p1, p6

    if-lez v1, :cond_1

    sub-float/2addr p3, p5

    mul-float p3, p3, v0

    neg-float p1, p3

    return p1

    .line 97
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->BOTTOM_RIGHT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    if-ne p7, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 98
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->TOP_LEFT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    if-ne p7, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    neg-float p1, p1

    int-to-float p4, p4

    mul-float p4, p4, v0

    add-float/2addr p1, p4

    div-float/2addr p1, p2

    mul-float p1, p1, p3

    mul-float p5, p5, v0

    sub-float/2addr p1, p5

    neg-float p1, p1

    return p1
.end method

.method public final a(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method public final a(FF)Landroid/graphics/PointF;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 122
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    .line 123
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 124
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 125
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method public final a(FFZ)Landroid/graphics/PointF;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 112
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 113
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    .line 114
    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float p1, p1, v0

    .line 115
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    .line 116
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 117
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 118
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 119
    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method public final a()V
    .locals 14

    .line 51
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    :goto_0
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->i:Z

    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 54
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->e:Landroid/graphics/Matrix;

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 56
    :cond_2
    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->k:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 57
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/widget/TouchImageView;->setMinZoom(F)V

    .line 58
    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    iget v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 59
    iput v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    .line 60
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 61
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 62
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    .line 63
    iget v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v4, v4

    int-to-float v5, v9

    div-float/2addr v4, v5

    .line 64
    sget-object v6, Lc/c/a/o/d;->a:[I

    iget-object v8, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 65
    :pswitch_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v4, v2

    .line 66
    :pswitch_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_1
    move v4, v2

    goto :goto_2

    .line 67
    :pswitch_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    :pswitch_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 68
    :goto_2
    :pswitch_4
    iget v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v10, v6

    mul-float v11, v2, v3

    sub-float/2addr v10, v11

    .line 69
    iget v11, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v12, v11

    mul-float v13, v4, v5

    sub-float/2addr v12, v13

    int-to-float v6, v6

    sub-float/2addr v6, v10

    .line 70
    iput v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->D:F

    int-to-float v6, v11

    sub-float/2addr v6, v12

    .line 71
    iput v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->E:F

    .line 72
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->g()Z

    move-result v6

    const/4 v11, 0x5

    const/4 v13, 0x0

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    if-nez v6, :cond_6

    .line 73
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 74
    sget-object v0, Lc/c/a/o/d;->a:[I

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v11, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 75
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v10, v1

    div-float/2addr v12, v1

    invoke-virtual {v0, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    :goto_3
    iput v8, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    goto :goto_4

    .line 79
    :cond_6
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->F:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->G:F

    cmpl-float v2, v2, v13

    if-nez v2, :cond_8

    .line 80
    :cond_7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    .line 81
    :cond_8
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->e:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 82
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    iget v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->D:F

    div-float/2addr v4, v3

    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    mul-float v4, v4, v3

    aput v4, v2, v1

    const/4 v1, 0x4

    .line 83
    iget v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->E:F

    div-float/2addr v4, v5

    mul-float v4, v4, v3

    aput v4, v2, v1

    const/4 v10, 0x2

    .line 84
    aget v4, v2, v10

    .line 85
    aget v12, v2, v11

    .line 86
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->F:F

    mul-float v3, v3, v1

    .line 87
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v5

    .line 88
    iget-object v13, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    iget v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->B:I

    iget v8, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    move-object v1, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFFIIILcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;)F

    move-result v1

    aput v1, v13, v10

    .line 89
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->G:F

    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    mul-float v3, v1, v2

    .line 90
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v4

    .line 91
    iget-object v10, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    iget v5, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->C:I

    iget v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    move-object v1, p0

    move v2, v12

    move v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFFIIILcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;)F

    move-result v0

    aput v0, v10, v11

    .line 92
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 93
    :goto_4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->e()V

    .line 94
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_9
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final a(DFFZ)V
    .locals 4

    if-eqz p5, :cond_0

    .line 99
    iget p5, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->p:F

    .line 100
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->q:F

    goto :goto_0

    .line 101
    :cond_0
    iget p5, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    .line 102
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    .line 103
    :goto_0
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    float-to-double v2, v1

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    double-to-float v2, v2

    iput v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    .line 105
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 106
    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p5

    if-gez v0, :cond_2

    .line 107
    iput p5, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    .line 108
    :cond_2
    :goto_1
    iget-object p5, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 109
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->d()V

    return-void
.end method

.method public a(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7

    .line 35
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->x:Z

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$h;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/widget/TouchImageView$h;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->y:Lcom/farsitel/bazaar/widget/TouchImageView$h;

    return-void

    .line 37
    :cond_0
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->k:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->setMinZoom(F)V

    .line 39
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 40
    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_2

    .line 42
    invoke-virtual {p0, p4}, Lcom/farsitel/bazaar/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->h()V

    float-to-double v2, p1

    .line 44
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(DFFZ)V

    .line 45
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 46
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v0

    mul-float p2, p2, v0

    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    .line 47
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 p2, 0x5

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result p4

    mul-float p3, p3, p4

    iget p4, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float p4, p4

    mul-float p4, p4, v1

    sub-float/2addr p3, p4

    neg-float p3, p3

    aput p3, p1, p2

    .line 48
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 49
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->e()V

    .line 50
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 9
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->s:Landroid/content/Context;

    const/4 v0, 0x1

    .line 10
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->u:I

    .line 12
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/farsitel/bazaar/widget/TouchImageView$g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/farsitel/bazaar/widget/TouchImageView$g;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;Lc/c/a/o/d;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->H:Landroid/view/ScaleGestureDetector;

    .line 13
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/farsitel/bazaar/widget/TouchImageView$d;

    invoke-direct {v2, p0, v3}, Lcom/farsitel/bazaar/widget/TouchImageView$d;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;Lc/c/a/o/d;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->I:Landroid/view/GestureDetector;

    .line 14
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    .line 15
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->e:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    .line 16
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    .line 18
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    if-nez v2, :cond_0

    .line 19
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 20
    :cond_0
    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 21
    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    const/high16 v1, 0x3f400000    # 0.75f

    .line 22
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->p:F

    const/high16 v1, 0x3fa00000    # 1.25f

    .line 23
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->q:F

    .line 24
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 25
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 26
    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-direct {p0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->setState(Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->x:Z

    .line 28
    new-instance v2, Lcom/farsitel/bazaar/widget/TouchImageView$f;

    invoke-direct {v2, p0, v3}, Lcom/farsitel/bazaar/widget/TouchImageView$f;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;Lc/c/a/o/d;)V

    invoke-super {p0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lc/c/a/f;->TouchImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_2

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/widget/TouchImageView;->setZoomEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    :cond_1
    throw p2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final b(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, p2

    if-gtz v1, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    const/4 p3, 0x0

    :goto_0
    cmpg-float v1, p1, p2

    if-gez v1, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v0
.end method

.method public c(FFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 3
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return v3

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    if-lez p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 3
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v1

    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return v3

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    if-lez p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final d()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->e()V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v2, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v2, 0x5

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    .line 4
    aget v0, v0, v2

    .line 5
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/farsitel/bazaar/widget/TouchImageView;->b(FFF)F

    move-result v1

    .line 6
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/farsitel/bazaar/widget/TouchImageView;->b(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->f:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentZoom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    return v0
.end method

.method public getOrientationChangeFixedPixel()Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    .line 5
    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 6
    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public getViewSizeChangeFixedPixel()Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-object v0
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float v2, v2

    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    iget v6, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    invoke-direct {v4, v5, v1, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 5
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->E:F

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->G:F

    .line 6
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->D:F

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->F:F

    .line 7
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->C:I

    .line 8
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->B:I

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->u:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->i:Z

    .line 5
    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->u:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->x:Z

    .line 2
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->y:Lcom/farsitel/bazaar/widget/TouchImageView$h;

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, Lcom/farsitel/bazaar/widget/TouchImageView$h;->a:F

    iget v2, v0, Lcom/farsitel/bazaar/widget/TouchImageView$h;->b:F

    iget v3, v0, Lcom/farsitel/bazaar/widget/TouchImageView$h;->c:F

    iget-object v0, v0, Lcom/farsitel/bazaar/widget/TouchImageView$h;->d:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->y:Lcom/farsitel/bazaar/widget/TouchImageView$h;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, v2, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(III)I

    move-result p1

    .line 10
    invoke-virtual {p0, p2, v3, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(III)I

    move-result p2

    .line 11
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->i:Z

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    const-string v0, "matrix"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->G:F

    const-string v0, "matchViewWidth"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->F:F

    const-string v0, "viewHeight"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->C:I

    const-string v0, "viewWidth"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->B:I

    const-string v0, "imageRendered"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    const-string v0, "viewSizeChangeFixedPixel"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const-string v0, "orientationChangeFixedPixel"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const-string v0, "orientation"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 14
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->u:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->i:Z

    :cond_0
    const-string v0, "instanceState"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 17
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->u:I

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->c:F

    const-string v2, "saveScale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->E:F

    const-string v2, "matchViewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->D:F

    const-string v2, "matchViewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    const-string v2, "viewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    const-string v2, "viewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 10
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->r:[F

    const-string v2, "matrix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 11
    iget-boolean v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    const-string v2, "imageRendered"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const-string v2, "viewSizeChangeFixedPixel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 13
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const-string v2, "orientationChangeFixedPixel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    .line 3
    iput p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->w:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i()V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    .line 2
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->q:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->m:Z

    return-void
.end method

.method public setMaxZoomRatio(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->n:F

    .line 2
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->n:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    .line 3
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->o:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->q:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->m:Z

    return-void
.end method

.method public setMinZoom(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->k:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 7
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->z:I

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->A:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 9
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_2

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    goto :goto_1

    .line 12
    :cond_3
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->k:F

    iput p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    .line 13
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->m:Z

    if-eqz p1, :cond_5

    .line 14
    iget p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->n:F

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->setMaxZoomRatio(F)V

    :cond_5
    const/high16 p1, 0x3f400000    # 0.75f

    .line 15
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->l:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->p:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->J:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/farsitel/bazaar/widget/TouchImageView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->L:Lcom/farsitel/bazaar/widget/TouchImageView$e;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->K:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOrientationChangeFixedPixel(Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->g:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 4
    iget-boolean p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->x:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->setZoom(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewSizeChangeFixedPixel(Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->h:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->c(FFF)V

    return-void
.end method

.method public setZoom(Lcom/farsitel/bazaar/widget/TouchImageView;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView;->f:Z

    return-void
.end method
