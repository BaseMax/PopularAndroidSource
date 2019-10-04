.class public Lio/github/kshitij_jain/indicatorview/IndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 41
    iput-object p1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->a:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lio/github/kshitij_jain/indicatorview/a$c;->IndicatorView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    sget p3, Lio/github/kshitij_jain/indicatorview/a$c;->IndicatorView_activeColor:I

    sget v0, Lio/github/kshitij_jain/indicatorview/a$a;->active_indicator:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 48
    sget v0, Lio/github/kshitij_jain/indicatorview/a$c;->IndicatorView_inactiveColor:I

    sget v1, Lio/github/kshitij_jain/indicatorview/a$a;->inactive_indicator:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 49
    sget v0, Lio/github/kshitij_jain/indicatorview/a$c;->IndicatorView_indicatorSize:I

    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/github/kshitij_jain/indicatorview/a$b;->indicator_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->b:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p3, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->c:Landroid/graphics/Paint;

    .line 55
    iget-object p3, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->c:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iput p2, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->d:I

    .line 58
    iget p1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->d:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->e:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget v1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->g:I

    if-ge v0, v1, :cond_0

    .line 65
    iget v1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->d:I

    iget v2, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->e:I

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v4, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget v0, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->d:I

    iget v1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->e:I

    iget v2, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->f:I

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1082
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1083
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1088
    :cond_0
    iget v3, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->e:I

    iget v4, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->g:I

    mul-int v3, v3, v4

    if-ne v0, v1, :cond_1

    .line 1090
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1098
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1099
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 1104
    :cond_2
    iget v2, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->d:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v0, v1, :cond_3

    .line 1106
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 77
    :goto_1
    invoke-virtual {p0, p1, p2}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActiveIndicatorColor(I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->invalidate()V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 113
    iput p1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->f:I

    .line 114
    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->invalidate()V

    return-void
.end method

.method public setInactiveIndicatorColor(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->invalidate()V

    return-void
.end method

.method public setPageIndicators(I)V
    .locals 0

    .line 118
    iput p1, p0, Lio/github/kshitij_jain/indicatorview/IndicatorView;->g:I

    .line 119
    invoke-virtual {p0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->invalidate()V

    return-void
.end method
