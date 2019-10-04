.class public final Lc/e/a/c/l/e;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field public static final a:Z

.field public static final b:Landroid/graphics/Paint;


# instance fields
.field public A:Z

.field public B:Landroid/graphics/Bitmap;

.field public C:Landroid/graphics/Paint;

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:[I

.field public I:Z

.field public final J:Landroid/text/TextPaint;

.field public final K:Landroid/text/TextPaint;

.field public L:Landroid/animation/TimeInterpolator;

.field public M:Landroid/animation/TimeInterpolator;

.field public N:F

.field public O:F

.field public P:F

.field public Q:I

.field public R:F

.field public S:F

.field public T:F

.field public U:I

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:F

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/RectF;

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:Landroid/graphics/Typeface;

.field public v:Landroid/graphics/Typeface;

.field public w:Landroid/graphics/Typeface;

.field public x:Ljava/lang/CharSequence;

.field public y:Ljava/lang/CharSequence;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lc/e/a/c/l/e;->a:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lc/e/a/c/l/e;->b:Landroid/graphics/Paint;

    .line 3
    sget-object v0, Lc/e/a/c/l/e;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    sget-object v0, Lc/e/a/c/l/e;->b:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lc/e/a/c/l/e;->i:I

    .line 3
    iput v0, p0, Lc/e/a/c/l/e;->j:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    iput v0, p0, Lc/e/a/c/l/e;->k:F

    .line 5
    iput v0, p0, Lc/e/a/c/l/e;->l:F

    .line 6
    iput-object p1, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    .line 7
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    .line 8
    new-instance p1, Landroid/text/TextPaint;

    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lc/e/a/c/l/e;->K:Landroid/text/TextPaint;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lc/e/a/c/l/e;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public static a(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 99
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 100
    :cond_0
    invoke-static {p0, p1, p2}, Lc/e/a/c/a/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 94
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 95
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 96
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 97
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 98
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static a(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 93
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 101
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Typeface;
    .locals 4

    .line 18
    iget-object v0, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final a()V
    .locals 11

    .line 47
    iget v0, p0, Lc/e/a/c/l/e;->G:F

    .line 48
    iget v1, p0, Lc/e/a/c/l/e;->l:F

    invoke-virtual {p0, v1}, Lc/e/a/c/l/e;->b(F)V

    .line 49
    iget-object v1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    .line 50
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    iget v4, p0, Lc/e/a/c/l/e;->j:I

    iget-boolean v5, p0, Lc/e/a/c/l/e;->z:Z

    .line 52
    invoke-static {v4, v5}, Lb/i/k/c;->a(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 53
    iget-object v5, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 54
    iget-object v9, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 55
    iget-object v9, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lc/e/a/c/l/e;->p:F

    goto :goto_1

    .line 56
    :cond_1
    iget-object v5, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lc/e/a/c/l/e;->p:F

    goto :goto_1

    .line 57
    :cond_2
    iget-object v5, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lc/e/a/c/l/e;->p:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    .line 58
    iget-object v1, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lc/e/a/c/l/e;->r:F

    goto :goto_2

    .line 59
    :cond_3
    iget-object v4, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lc/e/a/c/l/e;->r:F

    goto :goto_2

    .line 60
    :cond_4
    iget-object v4, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lc/e/a/c/l/e;->r:F

    .line 61
    :goto_2
    iget v1, p0, Lc/e/a/c/l/e;->k:F

    invoke-virtual {p0, v1}, Lc/e/a/c/l/e;->b(F)V

    .line 62
    iget-object v1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 63
    :cond_5
    iget v1, p0, Lc/e/a/c/l/e;->i:I

    iget-boolean v2, p0, Lc/e/a/c/l/e;->z:Z

    .line 64
    invoke-static {v1, v2}, Lb/i/k/c;->a(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    .line 65
    iget-object v2, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    .line 66
    iget-object v4, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    .line 67
    iget-object v4, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, Lc/e/a/c/l/e;->o:F

    goto :goto_3

    .line 68
    :cond_6
    iget-object v2, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Lc/e/a/c/l/e;->o:F

    goto :goto_3

    .line 69
    :cond_7
    iget-object v2, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Lc/e/a/c/l/e;->o:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    .line 70
    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lc/e/a/c/l/e;->q:F

    goto :goto_4

    .line 71
    :cond_8
    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lc/e/a/c/l/e;->q:F

    goto :goto_4

    .line 72
    :cond_9
    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    iput v1, p0, Lc/e/a/c/l/e;->q:F

    .line 73
    :goto_4
    invoke-virtual {p0}, Lc/e/a/c/l/e;->d()V

    .line 74
    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->f(F)V

    return-void
.end method

.method public final a(F)V
    .locals 6

    .line 29
    invoke-virtual {p0, p1}, Lc/e/a/c/l/e;->c(F)V

    .line 30
    iget v0, p0, Lc/e/a/c/l/e;->q:F

    iget v1, p0, Lc/e/a/c/l/e;->r:F

    iget-object v2, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lc/e/a/c/l/e;->s:F

    .line 31
    iget v0, p0, Lc/e/a/c/l/e;->o:F

    iget v1, p0, Lc/e/a/c/l/e;->p:F

    iget-object v2, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lc/e/a/c/l/e;->t:F

    .line 32
    iget v0, p0, Lc/e/a/c/l/e;->k:F

    iget v1, p0, Lc/e/a/c/l/e;->l:F

    iget-object v2, p0, Lc/e/a/c/l/e;->M:Landroid/animation/TimeInterpolator;

    .line 33
    invoke-static {v0, v1, p1, v2}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->f(F)V

    .line 35
    iget-object v0, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    .line 37
    invoke-virtual {p0}, Lc/e/a/c/l/e;->k()I

    move-result v1

    invoke-virtual {p0}, Lc/e/a/c/l/e;->j()I

    move-result v2

    invoke-static {v1, v2, p1}, Lc/e/a/c/l/e;->a(IIF)I

    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lc/e/a/c/l/e;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 40
    :goto_0
    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    iget v1, p0, Lc/e/a/c/l/e;->R:F

    iget v2, p0, Lc/e/a/c/l/e;->N:F

    const/4 v3, 0x0

    .line 41
    invoke-static {v1, v2, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lc/e/a/c/l/e;->S:F

    iget v4, p0, Lc/e/a/c/l/e;->O:F

    .line 42
    invoke-static {v2, v4, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lc/e/a/c/l/e;->T:F

    iget v5, p0, Lc/e/a/c/l/e;->P:F

    .line 43
    invoke-static {v4, v5, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Lc/e/a/c/l/e;->U:I

    iget v5, p0, Lc/e/a/c/l/e;->Q:I

    .line 44
    invoke-static {v4, v5, p1}, Lc/e/a/c/l/e;->a(IIF)I

    move-result p1

    .line 45
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 46
    iget-object p1, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    invoke-static {p1}, Lb/i/k/z;->F(Landroid/view/View;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lc/e/a/c/l/e;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lc/e/a/c/l/e;->I:Z

    .line 9
    invoke-virtual {p0}, Lc/e/a/c/l/e;->q()V

    :cond_0
    return-void
.end method

.method public a(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    .line 2
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 76
    iget-object v1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/e/a/c/l/e;->d:Z

    if-eqz v1, :cond_5

    .line 77
    iget v6, p0, Lc/e/a/c/l/e;->s:F

    .line 78
    iget v1, p0, Lc/e/a/c/l/e;->t:F

    .line 79
    iget-boolean v2, p0, Lc/e/a/c/l/e;->A:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 80
    iget v3, p0, Lc/e/a/c/l/e;->D:F

    iget v4, p0, Lc/e/a/c/l/e;->F:F

    mul-float v3, v3, v4

    .line 81
    iget v4, p0, Lc/e/a/c/l/e;->E:F

    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Lc/e/a/c/l/e;->F:F

    mul-float v3, v3, v4

    .line 83
    iget-object v4, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    iget v4, p0, Lc/e/a/c/l/e;->F:F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    .line 84
    iget v1, p0, Lc/e/a/c/l/e;->F:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    .line 86
    iget-object v1, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lc/e/a/c/l/e;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 87
    :cond_4
    iget-object v3, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 88
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v1, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 12
    invoke-virtual {p0}, Lc/e/a/c/l/e;->b()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 13
    iget-object v1, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    .line 14
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lc/e/a/c/l/e;->b()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    :goto_1
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 15
    iget-object v0, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lc/e/a/c/l/e;->h()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 24
    iput-object p1, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    .line 25
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/text/TextPaint;)V
    .locals 1

    .line 16
    iget v0, p0, Lc/e/a/c/l/e;->l:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 17
    iget-object v0, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    .line 90
    invoke-static {v0}, Lb/i/k/z;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 91
    sget-object v0, Lb/i/i/e;->d:Lb/i/i/d;

    goto :goto_1

    :cond_1
    sget-object v0, Lb/i/i/e;->c:Lb/i/i/d;

    .line 92
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lb/i/i/d;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public final a([I)Z
    .locals 0

    .line 26
    iput-object p1, p0, Lc/e/a/c/l/e;->H:[I

    .line 27
    invoke-virtual {p0}, Lc/e/a/c/l/e;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()F
    .locals 4

    .line 10
    iget-object v0, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lc/e/a/c/l/e;->K:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->a(Landroid/text/TextPaint;)V

    .line 12
    iget-object v0, p0, Lc/e/a/c/l/e;->K:Landroid/text/TextPaint;

    iget-object v1, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public final b(F)V
    .locals 8

    .line 37
    iget-object v0, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 39
    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 40
    iget v2, p0, Lc/e/a/c/l/e;->l:F

    invoke-static {p1, v2}, Lc/e/a/c/l/e;->a(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 41
    iget p1, p0, Lc/e/a/c/l/e;->l:F

    .line 42
    iput v3, p0, Lc/e/a/c/l/e;->F:F

    .line 43
    iget-object v1, p0, Lc/e/a/c/l/e;->w:Landroid/graphics/Typeface;

    iget-object v2, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    .line 44
    iput-object v2, p0, Lc/e/a/c/l/e;->w:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v2, p1

    move v6, v1

    goto :goto_3

    .line 45
    :cond_2
    iget v2, p0, Lc/e/a/c/l/e;->k:F

    .line 46
    iget-object v6, p0, Lc/e/a/c/l/e;->w:Landroid/graphics/Typeface;

    iget-object v7, p0, Lc/e/a/c/l/e;->v:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 47
    iput-object v7, p0, Lc/e/a/c/l/e;->w:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 48
    :goto_1
    iget v7, p0, Lc/e/a/c/l/e;->k:F

    invoke-static {p1, v7}, Lc/e/a/c/l/e;->a(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 49
    iput v3, p0, Lc/e/a/c/l/e;->F:F

    goto :goto_2

    .line 50
    :cond_4
    iget v7, p0, Lc/e/a/c/l/e;->k:F

    div-float/2addr p1, v7

    iput p1, p0, Lc/e/a/c/l/e;->F:F

    .line 51
    :goto_2
    iget p1, p0, Lc/e/a/c/l/e;->l:F

    iget v7, p0, Lc/e/a/c/l/e;->k:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_8

    .line 53
    iget p1, p0, Lc/e/a/c/l/e;->G:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lc/e/a/c/l/e;->I:Z

    if-nez p1, :cond_7

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x1

    .line 54
    :goto_5
    iput v2, p0, Lc/e/a/c/l/e;->G:F

    .line 55
    iput-boolean v5, p0, Lc/e/a/c/l/e;->I:Z

    .line 56
    :cond_8
    iget-object p1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v6, :cond_b

    .line 57
    :cond_9
    iget-object p1, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    iget v1, p0, Lc/e/a/c/l/e;->G:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 58
    iget-object p1, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    iget-object v1, p0, Lc/e/a/c/l/e;->w:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    iget-object p1, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    iget v1, p0, Lc/e/a/c/l/e;->F:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 60
    iget-object p1, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    iget-object v1, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 61
    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 63
    iput-object p1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    .line 64
    iget-object p1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lc/e/a/c/l/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lc/e/a/c/l/e;->z:Z

    :cond_b
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 13
    iget-object v0, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/b/j;->TextAppearance:[I

    .line 15
    invoke-static {v0, p1, v1}, Lb/b/g/pa;->a(Landroid/content/Context;I[I)Lb/b/g/pa;

    move-result-object v0

    .line 16
    sget v1, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Lb/b/g/pa;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    sget v1, Lb/b/j;->TextAppearance_android_textColor:I

    .line 18
    invoke-virtual {v0, v1}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    .line 19
    :cond_0
    sget v1, Lb/b/j;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Lb/b/g/pa;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    sget v1, Lb/b/j;->TextAppearance_android_textSize:I

    iget v2, p0, Lc/e/a/c/l/e;->l:F

    float-to-int v2, v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->c(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lc/e/a/c/l/e;->l:F

    .line 22
    :cond_1
    sget v1, Lb/b/j;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->d(II)I

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->Q:I

    .line 24
    sget v1, Lb/b/j;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->b(IF)F

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->O:F

    .line 26
    sget v1, Lb/b/j;->TextAppearance_android_shadowDy:I

    .line 27
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->b(IF)F

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->P:F

    .line 28
    sget v1, Lb/b/j;->TextAppearance_android_shadowRadius:I

    .line 29
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->b(IF)F

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->N:F

    .line 30
    invoke-virtual {v0}, Lb/b/g/pa;->a()V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Lc/e/a/c/l/e;->a(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    .line 33
    :cond_2
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    return-void
.end method

.method public b(IIII)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lc/e/a/c/l/e;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lc/e/a/c/l/e;->I:Z

    .line 9
    invoke-virtual {p0}, Lc/e/a/c/l/e;->q()V

    :cond_0
    return-void
.end method

.method public b(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/l/e;->M:Landroid/animation/TimeInterpolator;

    .line 2
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lc/e/a/c/l/e;->v:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 35
    iput-object p1, p0, Lc/e/a/c/l/e;->v:Landroid/graphics/Typeface;

    .line 36
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    iput-object p1, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p0}, Lc/e/a/c/l/e;->d()V

    .line 69
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 6
    iget v0, p0, Lc/e/a/c/l/e;->e:F

    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->a(F)V

    return-void
.end method

.method public final c(F)V
    .locals 4

    .line 7
    iget-object v0, p0, Lc/e/a/c/l/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    .line 8
    invoke-static {v1, v2, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 9
    iget-object v0, p0, Lc/e/a/c/l/e;->h:Landroid/graphics/RectF;

    iget v1, p0, Lc/e/a/c/l/e;->o:F

    iget v2, p0, Lc/e/a/c/l/e;->p:F

    iget-object v3, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 10
    iget-object v0, p0, Lc/e/a/c/l/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    .line 11
    invoke-static {v1, v2, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 12
    iget-object v0, p0, Lc/e/a/c/l/e;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/e/a/c/l/e;->L:Landroid/animation/TimeInterpolator;

    .line 13
    invoke-static {v1, v2, p1, v3}, Lc/e/a/c/l/e;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/l/e;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lc/e/a/c/l/e;->j:I

    .line 3
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Typeface;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/e/a/c/l/e;->v:Landroid/graphics/Typeface;

    iput-object p1, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    .line 5
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 25
    iget-object v0, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/l/e;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lc/e/a/c/l/e;->k:F

    .line 3
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/b/j;->TextAppearance:[I

    .line 6
    invoke-static {v0, p1, v1}, Lb/b/g/pa;->a(Landroid/content/Context;I[I)Lb/b/g/pa;

    move-result-object v0

    .line 7
    sget v1, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Lb/b/g/pa;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget v1, Lb/b/j;->TextAppearance_android_textColor:I

    .line 9
    invoke-virtual {v0, v1}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    .line 10
    :cond_0
    sget v1, Lb/b/j;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Lb/b/g/pa;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    sget v1, Lb/b/j;->TextAppearance_android_textSize:I

    iget v2, p0, Lc/e/a/c/l/e;->k:F

    float-to-int v2, v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->c(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lc/e/a/c/l/e;->k:F

    .line 13
    :cond_1
    sget v1, Lb/b/j;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->d(II)I

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->U:I

    .line 15
    sget v1, Lb/b/j;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->b(IF)F

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->S:F

    .line 17
    sget v1, Lb/b/j;->TextAppearance_android_shadowDy:I

    .line 18
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->b(IF)F

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->T:F

    .line 19
    sget v1, Lb/b/j;->TextAppearance_android_shadowRadius:I

    .line 20
    invoke-virtual {v0, v1, v2}, Lb/b/g/pa;->b(IF)F

    move-result v1

    iput v1, p0, Lc/e/a/c/l/e;->R:F

    .line 21
    invoke-virtual {v0}, Lb/b/g/pa;->a()V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 23
    invoke-virtual {p0, p1}, Lc/e/a/c/l/e;->a(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/c/l/e;->v:Landroid/graphics/Typeface;

    .line 24
    :cond_2
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    return-void
.end method

.method public final e()V
    .locals 9

    .line 8
    iget-object v0, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->a(F)V

    .line 10
    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lc/e/a/c/l/e;->D:F

    .line 11
    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lc/e/a/c/l/e;->E:F

    .line 12
    iget-object v0, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    iget-object v1, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 13
    iget v1, p0, Lc/e/a/c/l/e;->E:F

    iget v2, p0, Lc/e/a/c/l/e;->D:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    .line 15
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lc/e/a/c/l/e;->B:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    iget-object v3, p0, Lc/e/a/c/l/e;->y:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lc/e/a/c/l/e;->J:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v0, p0, Lc/e/a/c/l/e;->C:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc/e/a/c/l/e;->C:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p1, v0, v1}, Lb/i/e/a;->a(FFF)F

    move-result p1

    .line 5
    iget v0, p0, Lc/e/a/c/l/e;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lc/e/a/c/l/e;->e:F

    .line 7
    invoke-virtual {p0}, Lc/e/a/c/l/e;->c()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/l/e;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lc/e/a/c/l/e;->i:I

    .line 3
    invoke-virtual {p0}, Lc/e/a/c/l/e;->r()V

    :cond_0
    return-void
.end method

.method public f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final f(F)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/l/e;->b(F)V

    .line 2
    sget-boolean p1, Lc/e/a/c/l/e;->a:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lc/e/a/c/l/e;->F:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lc/e/a/c/l/e;->A:Z

    .line 3
    iget-boolean p1, p0, Lc/e/a/c/l/e;->A:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/e/a/c/l/e;->e()V

    .line 5
    :cond_1
    iget-object p1, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    invoke-static {p1}, Lb/i/k/z;->F(Landroid/view/View;)V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/l/e;->j:I

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->K:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Lc/e/a/c/l/e;->a(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/l/e;->K:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public i()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->u:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public j()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->H:[I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->H:[I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/l/e;->i:I

    return v0
.end method

.method public m()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->v:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/l/e;->e:F

    return v0
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->x:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc/e/a/c/l/e;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/l/e;->g:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/l/e;->f:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lc/e/a/c/l/e;->d:Z

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/l/e;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/c/l/e;->a()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/c/l/e;->c()V

    :cond_0
    return-void
.end method
