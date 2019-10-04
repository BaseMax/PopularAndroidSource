.class Lcom/ebay/android/widget/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/android/widget/HighlightView$ModifyMode;
    }
.end annotation


# instance fields
.field private final context:Landroid/view/View;

.field private final cornerPaint:Landroid/graphics/Paint;

.field private final cornerStrokeLength:I

.field private final cornerStrokeSizeHalf:I

.field private final cornerStrokeWidth:I

.field cropRect:Landroid/graphics/RectF;

.field drawRect:Landroid/graphics/Rect;

.field private final focusPaint:Landroid/graphics/Paint;

.field private imageRect:Landroid/graphics/RectF;

.field isFocused:Z

.field matrix:Landroid/graphics/Matrix;

.field private modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

.field private final noFocusPaint:Landroid/graphics/Paint;

.field private final outlinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->focusPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->noFocusPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lcom/ebay/android/widget/HighlightView;->cornerStrokeSizeHalf:I

    const/16 v0, 0x8

    .line 47
    iput v0, p0, Lcom/ebay/android/widget/HighlightView;->cornerStrokeWidth:I

    const/16 v0, 0x38

    .line 48
    iput v0, p0, Lcom/ebay/android/widget/HighlightView;->cornerStrokeLength:I

    .line 53
    sget-object v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;->None:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    .line 58
    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->context:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    const-class p1, Lcom/ebay/android/widget/HighlightView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not disable hardware acceleration."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 5

    .line 301
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 302
    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 303
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private growBy(FF)V
    .locals 5

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v4, p1, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 260
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr p1, v3

    div-float/2addr p1, v1

    :cond_0
    cmpl-float v3, p2, v2

    if-lez v3, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, p2, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 263
    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr p2, v3

    div-float/2addr p2, v1

    :cond_1
    neg-float p1, p1

    neg-float p2, p2

    .line 265
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 269
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x43fa0000    # 500.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 270
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float p1, p2, p1

    neg-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 273
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 274
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 277
    :cond_3
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 278
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 279
    :cond_4
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 280
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 281
    :cond_5
    :goto_0
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    .line 282
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 283
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    .line 284
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 286
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 287
    invoke-direct {p0}, Lcom/ebay/android/widget/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 288
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->context:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private moveBy(FF)V
    .locals 4

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 229
    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 232
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    .line 233
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 232
    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 236
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v2

    .line 237
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 236
    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 240
    invoke-direct {p0}, Lcom/ebay/android/widget/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 241
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/16 p1, -0xa

    .line 242
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 243
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->context:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/ebay/android/widget/HighlightView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/16 v1, -0x7600

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 92
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 93
    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->context:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 95
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 96
    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const v3, -0x111112

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 99
    invoke-virtual {p0}, Lcom/ebay/android/widget/HighlightView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->focusPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->noFocusPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    sget-object v1, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Grow:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    sget-object v1, Lcom/ebay/android/widget/HighlightView$ModifyMode;->None:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x38

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x38

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x38

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x38

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x38

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x38

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x38

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v3, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x38

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method getCropRect()Landroid/graphics/Rect;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 11

    .line 149
    invoke-direct {p0}, Lcom/ebay/android/widget/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/ebay/android/widget/HighlightView;->context:Landroid/view/View;

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 156
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 157
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "CropPhoto"

    const/4 v7, 0x3

    .line 160
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "CropPhoto"

    const-string/jumbo v8, "touched (%1f, %2f) actual (%3d, %4d, %5d, %6d)"

    const/4 v9, 0x6

    .line 161
    new-array v9, v9, [Ljava/lang/Object;

    .line 163
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v4

    const/4 v3, 0x2

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x4

    aput-object v3, v9, v10

    const/4 v3, 0x5

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    .line 164
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-ltz v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 168
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_6

    :cond_5
    or-int/lit8 v7, v7, 0x4

    :cond_6
    if-eqz v5, :cond_8

    .line 172
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_8

    :cond_7
    or-int/lit8 v7, v7, 0x8

    :cond_8
    if-eqz v5, :cond_a

    .line 176
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_9

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_a

    :cond_9
    or-int/lit8 v7, v7, 0x10

    :cond_a
    if-ne v7, v4, :cond_b

    float-to-int p1, p1

    float-to-int p2, p2

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 v7, 0x20

    :cond_b
    return v7
.end method

.method handleMotion(IFF)V
    .locals 4

    .line 194
    invoke-direct {p0}, Lcom/ebay/android/widget/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    .line 202
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p2, p2, p1

    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p3, p3, p1

    invoke-direct {p0, p2, p3}, Lcom/ebay/android/widget/HighlightView;->moveBy(FF)V

    goto :goto_1

    :cond_1
    and-int/lit8 v2, p1, 0x6

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 p2, 0x0

    :cond_2
    and-int/lit8 v2, p1, 0x18

    if-nez v2, :cond_3

    const/4 p3, 0x0

    .line 217
    :cond_3
    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float p2, p2, v2

    .line 218
    iget-object v2, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float p3, p3, v2

    and-int/lit8 v0, p1, 0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float v0, v0, p2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    const/4 v1, -0x1

    :cond_5
    int-to-float p1, v1

    mul-float p1, p1, p3

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/ebay/android/widget/HighlightView;->growBy(FF)V

    :goto_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/ebay/android/widget/HighlightView;->isFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 308
    invoke-direct {p0}, Lcom/ebay/android/widget/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/ebay/android/widget/HighlightView;->isFocused:Z

    return-void
.end method

.method public setMode(Lcom/ebay/android/widget/HighlightView$ModifyMode;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/ebay/android/widget/HighlightView;->modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 141
    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    .line 142
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->context:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 1

    .line 313
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/ebay/android/widget/HighlightView;->matrix:Landroid/graphics/Matrix;

    .line 315
    iput-object p3, p0, Lcom/ebay/android/widget/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 316
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->imageRect:Landroid/graphics/RectF;

    .line 317
    invoke-direct {p0}, Lcom/ebay/android/widget/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 319
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->focusPaint:Landroid/graphics/Paint;

    const/16 p2, 0x7d

    const/16 p3, 0x32

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 320
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->noFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 321
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 326
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget-object p1, p0, Lcom/ebay/android/widget/HighlightView;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 329
    sget-object p1, Lcom/ebay/android/widget/HighlightView$ModifyMode;->None:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    iput-object p1, p0, Lcom/ebay/android/widget/HighlightView;->modifyMode:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    .line 332
    iput-boolean p2, p0, Lcom/ebay/android/widget/HighlightView;->isFocused:Z

    return-void
.end method
