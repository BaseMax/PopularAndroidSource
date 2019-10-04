.class public final Lcab/snapp/snappuikit/other/SemiCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:I

.field private d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    sget-object v0, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->LEFT:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    const v1, -0xffff01

    invoke-direct {p0, v1, v0}, Lcab/snapp/snappuikit/other/SemiCircleDrawable;-><init>(ILcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;)V

    return-void
.end method

.method public constructor <init>(ILcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    iput p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->c:I

    .line 32
    iput-object p2, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    .line 34
    iget-object p2, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 38
    iget-object p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->b:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    invoke-virtual {p0}, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v2, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->LEFT:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v2, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->RIGHT:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 72
    iget-object v1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v2, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->BOTTOM:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v1, v2, :cond_2

    .line 74
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 64
    iget-object v1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v2, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->RIGHT:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v1, v2, :cond_2

    .line 66
    iget v1, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    :cond_2
    :goto_1
    iget-object v1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->b:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v1, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->LEFT:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v0, v1, :cond_3

    .line 82
    iget-object v3, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->b:Landroid/graphics/RectF;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    iget-object v7, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 83
    :cond_3
    iget-object v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v1, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->TOP:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v0, v1, :cond_4

    .line 84
    iget-object v3, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->b:Landroid/graphics/RectF;

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    iget-object v7, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 85
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v1, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->RIGHT:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v0, v1, :cond_5

    .line 86
    iget-object v3, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->b:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    iget-object v7, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 87
    :cond_5
    iget-object v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->d:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    sget-object v1, Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;->BOTTOM:Lcab/snapp/snappuikit/other/SemiCircleDrawable$Direction;

    if-ne v0, v1, :cond_6

    .line 88
    iget-object v3, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->b:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    iget-object v7, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public final getColor()I
    .locals 1

    .line 43
    iget v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->c:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 108
    iget-object v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    .line 51
    iput p1, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->c:I

    .line 52
    iget-object v0, p0, Lcab/snapp/snappuikit/other/SemiCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
