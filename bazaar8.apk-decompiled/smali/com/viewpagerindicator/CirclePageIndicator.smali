.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lc/g/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:F

.field public c:F

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public g:Landroidx/viewpager/widget/ViewPager;

.field public h:Landroidx/viewpager/widget/ViewPager$f;

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public q:F

.field public r:I

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lc/g/f;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:F

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10
    sget v2, Lc/g/h;->default_circle_indicator_page_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 11
    sget v3, Lc/g/h;->default_circle_indicator_fill_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 12
    sget v4, Lc/g/j;->default_circle_indicator_orientation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 13
    sget v5, Lc/g/h;->default_circle_indicator_stroke_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 14
    sget v6, Lc/g/i;->default_circle_indicator_stroke_width:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 15
    sget v7, Lc/g/i;->default_circle_indicator_radius:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 16
    sget v8, Lc/g/i;->default_circle_indicator_gap_width:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 17
    sget v9, Lc/g/g;->default_circle_indicator_centered:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 18
    sget v10, Lc/g/g;->default_circle_indicator_snap:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 19
    sget-object v10, Lc/g/k;->CirclePageIndicator:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 20
    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z

    .line 21
    invoke-virtual {p2, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    .line 22
    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-virtual {p2, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    const/16 v4, 0x9

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    const/4 v4, 0x5

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x7

    .line 29
    invoke-virtual {p2, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    const/4 v2, 0x3

    .line 30
    invoke-virtual {p2, v2, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    const/16 v2, 0x8

    .line 31
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    .line 32
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lb/i/k/A;->b(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    .line 38
    iget-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    if-eqz p1, :cond_1

    .line 39
    iput p3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    .line 40
    iput p3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    :cond_1
    return-void
.end method

.method private getCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/G/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lb/G/a/a;->a()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(II)I
    .locals 4

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getCount()I

    move-result v1

    int-to-float p2, p2

    mul-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    .line 13
    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    mul-float v2, v2, v3

    add-float/2addr p2, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    mul-float v1, v1, v2

    add-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    float-to-int p2, p2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 14
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :cond_2
    :goto_0
    return p1
.end method

.method public a(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:I

    .line 2
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 1

    .line 4
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    .line 5
    iput p2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->a(IFI)V

    :cond_0
    return-void
.end method

.method public final b(II)I
    .locals 3

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    mul-float v2, v2, v1

    int-to-float p2, p2

    add-float/2addr v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr v2, p2

    float-to-int p2, v2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 10
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    .line 3
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->b(I)V

    :cond_2
    return-void
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getGapWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    return-void

    .line 5
    :cond_1
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 14
    :goto_0
    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    iget v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    add-float/2addr v7, v8

    int-to-float v4, v4

    add-float/2addr v4, v5

    int-to-float v9, v2

    add-float/2addr v9, v5

    div-float/2addr v8, v6

    add-float/2addr v9, v8

    .line 15
    iget-boolean v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z

    if-eqz v5, :cond_3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v6

    int-to-float v2, v0

    mul-float v2, v2, v7

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    add-float/2addr v9, v1

    .line 16
    :cond_3
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    .line 17
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 18
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_8

    int-to-float v3, v2

    mul-float v3, v3, v7

    add-float/2addr v3, v9

    .line 19
    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    move v3, v4

    .line 20
    :goto_2
    iget-object v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    if-lez v6, :cond_6

    .line 21
    iget-object v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    cmpl-float v8, v1, v6

    if-eqz v8, :cond_7

    .line 23
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_8
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    if-eqz v0, :cond_9

    .line 25
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    int-to-float v0, v0

    goto :goto_3

    .line 26
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:F

    add-float/2addr v0, v1

    :goto_3
    mul-float v0, v0, v7

    .line 27
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    if-nez v1, :cond_a

    add-float/2addr v0, v9

    goto :goto_4

    :cond_a
    add-float/2addr v0, v9

    move v10, v4

    move v4, v0

    move v0, v10

    .line 28
    :goto_4
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->a(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->b(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->b(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->a(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    .line 4
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    :goto_0
    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/G/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/G/a/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Lb/i/k/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 5
    invoke-static {p1, v0}, Lb/i/k/h;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 6
    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    const/4 v2, 0x1

    .line 7
    :cond_3
    invoke-static {p1, v2}, Lb/i/k/h;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    .line 8
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    invoke-static {p1, v0}, Lb/i/k/h;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Lb/i/k/h;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:F

    goto/16 :goto_0

    .line 9
    :cond_5
    invoke-static {p1}, Lb/i/k/h;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 10
    invoke-static {p1, v0}, Lb/i/k/h;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:F

    .line 11
    invoke-static {p1, v0}, Lb/i/k/h;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    goto/16 :goto_0

    .line 12
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    invoke-static {p1, v0}, Lb/i/k/h;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 13
    invoke-static {p1, v0}, Lb/i/k/h;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 14
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:F

    sub-float v0, p1, v0

    .line 15
    iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:Z

    if-nez v2, :cond_7

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 17
    iput-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:Z

    .line 18
    :cond_7
    iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:Z

    if-eqz v2, :cond_f

    .line 19
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:F

    .line 20
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->g()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 21
    :cond_8
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->b(F)V

    goto :goto_0

    .line 22
    :cond_9
    iget-boolean v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:Z

    if-nez v4, :cond_d

    .line 23
    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/G/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lb/G/a/a;->a()I

    move-result v4

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 25
    iget v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 26
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 27
    :cond_b
    iget v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 28
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 29
    :cond_d
    iput-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:Z

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    .line 31
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->g()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->d()V

    goto :goto_0

    .line 32
    :cond_e
    invoke-static {p1, v2}, Lb/i/k/h;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:I

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCentered(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGapWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:Landroidx/viewpager/widget/ViewPager$f;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/G/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    .line 5
    iget-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
