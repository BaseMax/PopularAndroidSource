.class public final Lc/e/a/a/m/o;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# instance fields
.field public A:F

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Landroid/text/StaticLayout;

.field public G:I

.field public H:I

.field public I:I

.field public J:Landroid/graphics/Rect;

.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroid/text/TextPaint;

.field public final g:Landroid/graphics/Paint;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/text/Layout$Alignment;

.field public j:Landroid/graphics/Bitmap;

.field public k:F

.field public l:I

.field public m:I

.field public n:F

.field public o:I

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lc/e/a/a/m/o;->e:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lc/e/a/a/m/o;->d:F

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 10
    iput p1, p0, Lc/e/a/a/m/o;->a:F

    .line 11
    iput p1, p0, Lc/e/a/a/m/o;->b:F

    .line 12
    iput p1, p0, Lc/e/a/a/m/o;->c:F

    .line 13
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    .line 14
    iget-object p1, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 15
    iget-object p1, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lc/e/a/a/m/o;->g:Landroid/graphics/Paint;

    .line 17
    iget-object p1, p0, Lc/e/a/a/m/o;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object p1, p0, Lc/e/a/a/m/o;->g:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 38
    iget v0, p0, Lc/e/a/a/m/o;->D:I

    iget v1, p0, Lc/e/a/a/m/o;->B:I

    sub-int/2addr v0, v1

    .line 39
    iget v2, p0, Lc/e/a/a/m/o;->E:I

    iget v3, p0, Lc/e/a/a/m/o;->C:I

    sub-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    .line 40
    iget v4, p0, Lc/e/a/a/m/o;->n:F

    mul-float v4, v4, v0

    add-float/2addr v1, v4

    int-to-float v3, v3

    int-to-float v2, v2

    .line 41
    iget v4, p0, Lc/e/a/a/m/o;->k:F

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    .line 42
    iget v4, p0, Lc/e/a/a/m/o;->p:F

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 43
    iget v4, p0, Lc/e/a/a/m/o;->q:F

    const/4 v5, 0x1

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    iget-object v4, p0, Lc/e/a/a/m/o;->j:Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lc/e/a/a/m/o;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 45
    :goto_0
    iget v4, p0, Lc/e/a/a/m/o;->m:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    int-to-float v4, v0

    :goto_1
    sub-float/2addr v1, v4

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_2

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 46
    iget v4, p0, Lc/e/a/a/m/o;->o:I

    if-ne v4, v6, :cond_3

    int-to-float v4, v2

    :goto_3
    sub-float/2addr v3, v4

    goto :goto_4

    :cond_3
    if-ne v4, v5, :cond_4

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    goto :goto_3

    :cond_4
    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 47
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    add-int/2addr v2, v3

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lc/e/a/a/m/o;->J:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lc/e/a/a/m/o;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lc/e/a/a/m/o;->J:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lc/e/a/a/m/o;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/a/m/o;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public a(Lc/e/a/a/k/b;ZZLc/e/a/a/k/a;FFFLandroid/graphics/Canvas;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 1
    iget-object v13, v1, Lc/e/a/a/k/b;->c:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/high16 v14, -0x1000000

    if-eqz v13, :cond_3

    .line 2
    iget-object v14, v1, Lc/e/a/a/k/b;->a:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v14, v1, Lc/e/a/a/k/b;->k:Z

    if-eqz v14, :cond_2

    if-eqz v2, :cond_2

    iget v14, v1, Lc/e/a/a/k/b;->l:I

    goto :goto_1

    :cond_2
    iget v14, v4, Lc/e/a/a/k/a;->d:I

    .line 4
    :cond_3
    :goto_1
    iget-object v15, v0, Lc/e/a/a/m/o;->h:Ljava/lang/CharSequence;

    iget-object v8, v1, Lc/e/a/a/k/b;->a:Ljava/lang/CharSequence;

    invoke-static {v15, v8}, Lc/e/a/a/m/o;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lc/e/a/a/m/o;->i:Landroid/text/Layout$Alignment;

    iget-object v15, v1, Lc/e/a/a/k/b;->b:Landroid/text/Layout$Alignment;

    .line 5
    invoke-static {v8, v15}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lc/e/a/a/m/o;->j:Landroid/graphics/Bitmap;

    iget-object v15, v1, Lc/e/a/a/k/b;->c:Landroid/graphics/Bitmap;

    if-ne v8, v15, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->k:F

    iget v15, v1, Lc/e/a/a/k/b;->d:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->l:I

    iget v15, v1, Lc/e/a/a/k/b;->e:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->m:I

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lc/e/a/a/k/b;->f:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->n:F

    iget v15, v1, Lc/e/a/a/k/b;->g:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->o:I

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lc/e/a/a/k/b;->h:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->p:F

    iget v15, v1, Lc/e/a/a/k/b;->i:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->q:F

    iget v15, v1, Lc/e/a/a/k/b;->j:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lc/e/a/a/m/o;->r:Z

    if-ne v8, v2, :cond_4

    iget-boolean v8, v0, Lc/e/a/a/m/o;->s:Z

    if-ne v8, v3, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->t:I

    iget v15, v4, Lc/e/a/a/k/a;->b:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->u:I

    iget v15, v4, Lc/e/a/a/k/a;->c:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->v:I

    if-ne v8, v14, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->x:I

    iget v15, v4, Lc/e/a/a/k/a;->e:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->w:I

    iget v15, v4, Lc/e/a/a/k/a;->f:I

    if-ne v8, v15, :cond_4

    iget-object v8, v0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    .line 8
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v15, v4, Lc/e/a/a/k/a;->g:Landroid/graphics/Typeface;

    invoke-static {v8, v15}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->y:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->z:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->A:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->B:I

    if-ne v8, v9, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->C:I

    if-ne v8, v10, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->D:I

    if-ne v8, v11, :cond_4

    iget v8, v0, Lc/e/a/a/m/o;->E:I

    if-ne v8, v12, :cond_4

    move-object/from16 v8, p8

    .line 9
    invoke-virtual {v0, v8, v13}, Lc/e/a/a/m/o;->a(Landroid/graphics/Canvas;Z)V

    return-void

    :cond_4
    move-object/from16 v8, p8

    .line 10
    iget-object v15, v1, Lc/e/a/a/k/b;->a:Ljava/lang/CharSequence;

    iput-object v15, v0, Lc/e/a/a/m/o;->h:Ljava/lang/CharSequence;

    .line 11
    iget-object v15, v1, Lc/e/a/a/k/b;->b:Landroid/text/Layout$Alignment;

    iput-object v15, v0, Lc/e/a/a/m/o;->i:Landroid/text/Layout$Alignment;

    .line 12
    iget-object v15, v1, Lc/e/a/a/k/b;->c:Landroid/graphics/Bitmap;

    iput-object v15, v0, Lc/e/a/a/m/o;->j:Landroid/graphics/Bitmap;

    .line 13
    iget v15, v1, Lc/e/a/a/k/b;->d:F

    iput v15, v0, Lc/e/a/a/m/o;->k:F

    .line 14
    iget v15, v1, Lc/e/a/a/k/b;->e:I

    iput v15, v0, Lc/e/a/a/m/o;->l:I

    .line 15
    iget v15, v1, Lc/e/a/a/k/b;->f:I

    iput v15, v0, Lc/e/a/a/m/o;->m:I

    .line 16
    iget v15, v1, Lc/e/a/a/k/b;->g:F

    iput v15, v0, Lc/e/a/a/m/o;->n:F

    .line 17
    iget v15, v1, Lc/e/a/a/k/b;->h:I

    iput v15, v0, Lc/e/a/a/m/o;->o:I

    .line 18
    iget v15, v1, Lc/e/a/a/k/b;->i:F

    iput v15, v0, Lc/e/a/a/m/o;->p:F

    .line 19
    iget v1, v1, Lc/e/a/a/k/b;->j:F

    iput v1, v0, Lc/e/a/a/m/o;->q:F

    .line 20
    iput-boolean v2, v0, Lc/e/a/a/m/o;->r:Z

    .line 21
    iput-boolean v3, v0, Lc/e/a/a/m/o;->s:Z

    .line 22
    iget v1, v4, Lc/e/a/a/k/a;->b:I

    iput v1, v0, Lc/e/a/a/m/o;->t:I

    .line 23
    iget v1, v4, Lc/e/a/a/k/a;->c:I

    iput v1, v0, Lc/e/a/a/m/o;->u:I

    .line 24
    iput v14, v0, Lc/e/a/a/m/o;->v:I

    .line 25
    iget v1, v4, Lc/e/a/a/k/a;->e:I

    iput v1, v0, Lc/e/a/a/m/o;->x:I

    .line 26
    iget v1, v4, Lc/e/a/a/k/a;->f:I

    iput v1, v0, Lc/e/a/a/m/o;->w:I

    .line 27
    iget-object v1, v0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget-object v2, v4, Lc/e/a/a/k/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 28
    iput v5, v0, Lc/e/a/a/m/o;->y:F

    .line 29
    iput v6, v0, Lc/e/a/a/m/o;->z:F

    .line 30
    iput v7, v0, Lc/e/a/a/m/o;->A:F

    .line 31
    iput v9, v0, Lc/e/a/a/m/o;->B:I

    .line 32
    iput v10, v0, Lc/e/a/a/m/o;->C:I

    .line 33
    iput v11, v0, Lc/e/a/a/m/o;->D:I

    .line 34
    iput v12, v0, Lc/e/a/a/m/o;->E:I

    if-eqz v13, :cond_5

    .line 35
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/m/o;->b()V

    goto :goto_2

    .line 36
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/m/o;->a()V

    .line 37
    :goto_2
    invoke-virtual {v0, v8, v13}, Lc/e/a/a/m/o;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public final b()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lc/e/a/a/m/o;->D:I

    iget v2, v0, Lc/e/a/a/m/o;->B:I

    sub-int/2addr v1, v2

    .line 2
    iget v2, v0, Lc/e/a/a/m/o;->E:I

    iget v3, v0, Lc/e/a/a/m/o;->C:I

    sub-int/2addr v2, v3

    .line 3
    iget-object v3, v0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v4, v0, Lc/e/a/a/m/o;->y:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    iget v3, v0, Lc/e/a/a/m/o;->y:F

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v4, v3, 0x2

    sub-int v5, v1, v4

    .line 5
    iget v6, v0, Lc/e/a/a/m/o;->p:F

    const/4 v7, 0x1

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_0

    int-to-float v5, v5

    mul-float v5, v5, v6

    float-to-int v5, v5

    :cond_0
    const-string v6, "SubtitlePainter"

    if-gtz v5, :cond_1

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 6
    invoke-static {v6, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v8, v0, Lc/e/a/a/m/o;->h:Ljava/lang/CharSequence;

    .line 8
    iget-boolean v9, v0, Lc/e/a/a/m/o;->r:Z

    const/high16 v10, 0xff0000

    const/16 v16, 0x0

    const/4 v15, 0x0

    if-nez v9, :cond_2

    .line 9
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 10
    :cond_2
    iget-boolean v9, v0, Lc/e/a/a/m/o;->s:Z

    if-nez v9, :cond_4

    .line 11
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 13
    const-class v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v9, v15, v8, v11}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/AbsoluteSizeSpan;

    .line 14
    const-class v12, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v9, v15, v8, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/RelativeSizeSpan;

    .line 15
    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 16
    invoke-virtual {v9, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 17
    :cond_3
    array-length v11, v8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v8, v12

    .line 18
    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 19
    :cond_4
    iget v9, v0, Lc/e/a/a/m/o;->z:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_6

    .line 20
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    iget v11, v0, Lc/e/a/a/m/o;->z:F

    float-to-int v11, v11

    invoke-direct {v8, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 22
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 23
    invoke-virtual {v9, v8, v15, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move-object v8, v9

    .line 24
    :cond_6
    :goto_2
    iget v9, v0, Lc/e/a/a/m/o;->u:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_7

    .line 25
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v11, v0, Lc/e/a/a/m/o;->u:I

    invoke-direct {v8, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 27
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 28
    invoke-virtual {v9, v8, v15, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v18, v9

    goto :goto_3

    :cond_7
    move-object/from16 v18, v8

    .line 29
    :goto_3
    iget-object v8, v0, Lc/e/a/a/m/o;->i:Landroid/text/Layout$Alignment;

    if-nez v8, :cond_8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_8
    move-object/from16 v21, v8

    .line 30
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v10, v0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v13, v0, Lc/e/a/a/m/o;->d:F

    iget v12, v0, Lc/e/a/a/m/o;->e:F

    const/16 v17, 0x1

    move-object v8, v14

    move-object/from16 v9, v18

    move v11, v5

    move/from16 v19, v12

    move-object/from16 v12, v21

    move-object v7, v14

    move/from16 v14, v19

    move/from16 v25, v3

    const/4 v3, 0x0

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    .line 31
    iget-object v7, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    .line 32
    iget-object v8, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    .line 33
    iget-object v11, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 34
    :cond_9
    iget v8, v0, Lc/e/a/a/m/o;->p:F

    const/4 v9, 0x1

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_a

    if-ge v10, v5, :cond_a

    goto :goto_5

    :cond_a
    move v5, v10

    :goto_5
    add-int/2addr v5, v4

    .line 35
    iget v4, v0, Lc/e/a/a/m/o;->n:F

    const/4 v8, 0x1

    const/4 v10, 0x2

    cmpl-float v11, v4, v9

    if-eqz v11, :cond_d

    int-to-float v1, v1

    mul-float v1, v1, v4

    .line 36
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v0, Lc/e/a/a/m/o;->B:I

    add-int/2addr v1, v4

    .line 37
    iget v4, v0, Lc/e/a/a/m/o;->o:I

    if-ne v4, v10, :cond_b

    sub-int/2addr v1, v5

    goto :goto_6

    :cond_b
    if-ne v4, v8, :cond_c

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v5

    div-int/2addr v1, v10

    .line 38
    :cond_c
    :goto_6
    iget v4, v0, Lc/e/a/a/m/o;->B:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v5, v1

    .line 39
    iget v4, v0, Lc/e/a/a/m/o;->D:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_7

    :cond_d
    sub-int/2addr v1, v5

    .line 40
    div-int/2addr v1, v10

    iget v4, v0, Lc/e/a/a/m/o;->B:I

    add-int/2addr v1, v4

    add-int v4, v1, v5

    :goto_7
    sub-int/2addr v4, v1

    if-gtz v4, :cond_e

    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 41
    invoke-static {v6, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_e
    iget v5, v0, Lc/e/a/a/m/o;->k:F

    const/4 v6, 0x1

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_14

    .line 43
    iget v6, v0, Lc/e/a/a/m/o;->l:I

    if-nez v6, :cond_f

    int-to-float v2, v2

    mul-float v2, v2, v5

    .line 44
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lc/e/a/a/m/o;->C:I

    :goto_8
    add-int/2addr v2, v3

    goto :goto_9

    .line 45
    :cond_f
    iget-object v2, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    iget-object v5, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 46
    iget v3, v0, Lc/e/a/a/m/o;->k:F

    cmpl-float v5, v3, v16

    if-ltz v5, :cond_10

    int-to-float v2, v2

    mul-float v3, v3, v2

    .line 47
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lc/e/a/a/m/o;->C:I

    goto :goto_8

    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    int-to-float v2, v2

    mul-float v3, v3, v2

    .line 48
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lc/e/a/a/m/o;->E:I

    goto :goto_8

    .line 49
    :goto_9
    iget v3, v0, Lc/e/a/a/m/o;->m:I

    if-ne v3, v10, :cond_11

    sub-int/2addr v2, v7

    goto :goto_a

    :cond_11
    if-ne v3, v8, :cond_12

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v7

    div-int/2addr v2, v10

    :cond_12
    :goto_a
    add-int v3, v2, v7

    .line 50
    iget v5, v0, Lc/e/a/a/m/o;->E:I

    if-le v3, v5, :cond_13

    sub-int v2, v5, v7

    goto :goto_b

    .line 51
    :cond_13
    iget v3, v0, Lc/e/a/a/m/o;->C:I

    if-ge v2, v3, :cond_15

    move v2, v3

    goto :goto_b

    .line 52
    :cond_14
    iget v3, v0, Lc/e/a/a/m/o;->E:I

    sub-int/2addr v3, v7

    int-to-float v2, v2

    iget v5, v0, Lc/e/a/a/m/o;->A:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int v2, v3, v2

    .line 53
    :cond_15
    :goto_b
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v6, v0, Lc/e/a/a/m/o;->d:F

    iget v7, v0, Lc/e/a/a/m/o;->e:F

    const/16 v24, 0x1

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move/from16 v20, v4

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    .line 54
    iput v1, v0, Lc/e/a/a/m/o;->G:I

    .line 55
    iput v2, v0, Lc/e/a/a/m/o;->H:I

    move/from16 v1, v25

    .line 56
    iput v1, v0, Lc/e/a/a/m/o;->I:I

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 9

    .line 57
    iget-object v0, p0, Lc/e/a/a/m/o;->F:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 59
    iget v2, p0, Lc/e/a/a/m/o;->G:I

    int-to-float v2, v2

    iget v3, p0, Lc/e/a/a/m/o;->H:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 60
    iget v2, p0, Lc/e/a/a/m/o;->v:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 61
    iget-object v2, p0, Lc/e/a/a/m/o;->g:Landroid/graphics/Paint;

    iget v3, p0, Lc/e/a/a/m/o;->v:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget v2, p0, Lc/e/a/a/m/o;->I:I

    neg-int v2, v2

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lc/e/a/a/m/o;->I:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lc/e/a/a/m/o;->g:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    :cond_1
    iget v2, p0, Lc/e/a/a/m/o;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 64
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 65
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v4, p0, Lc/e/a/a/m/o;->a:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 66
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v4, p0, Lc/e/a/a/m/o;->w:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 67
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 69
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v4, p0, Lc/e/a/a/m/o;->b:F

    iget v5, p0, Lc/e/a/a/m/o;->c:F

    iget v6, p0, Lc/e/a/a/m/o;->w:I

    invoke-virtual {v2, v4, v5, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    .line 70
    :cond_4
    iget v2, p0, Lc/e/a/a/m/o;->x:I

    if-ne v2, v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz v4, :cond_6

    const/4 v5, -0x1

    goto :goto_1

    .line 71
    :cond_6
    iget v5, p0, Lc/e/a/a/m/o;->w:I

    :goto_1
    if-eqz v4, :cond_7

    .line 72
    iget v2, p0, Lc/e/a/a/m/o;->w:I

    .line 73
    :cond_7
    iget v4, p0, Lc/e/a/a/m/o;->b:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 74
    iget-object v6, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v7, p0, Lc/e/a/a/m/o;->t:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 75
    iget-object v6, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v6, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v7, p0, Lc/e/a/a/m/o;->b:F

    neg-float v8, v4

    invoke-virtual {v6, v7, v8, v8, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 77
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v5, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v6, p0, Lc/e/a/a/m/o;->b:F

    invoke-virtual {v5, v6, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 79
    :cond_8
    :goto_2
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    iget v4, p0, Lc/e/a/a/m/o;->t:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 80
    iget-object v2, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lc/e/a/a/m/o;->f:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
