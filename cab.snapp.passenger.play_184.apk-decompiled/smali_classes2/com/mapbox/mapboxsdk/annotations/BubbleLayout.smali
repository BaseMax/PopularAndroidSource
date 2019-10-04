.class public Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_STROKE_WIDTH:F = -1.0f


# instance fields
.field private arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

.field private arrowHeight:F

.field private arrowPosition:F

.field private arrowWidth:F

.field private bubble:Lcom/mapbox/mapboxsdk/annotations/Bubble;

.field private bubbleColor:I

.field private cornersRadius:F

.field private strokeColor:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 66
    sget p3, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_arrowDirection:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 68
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    invoke-direct {v0, p3}, Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;-><init>(I)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    .line 69
    sget p3, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_arrowWidth:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 70
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    .line 69
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    .line 71
    sget p3, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_arrowHeight:I

    .line 72
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    .line 71
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    .line 73
    sget p3, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_arrowPosition:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 74
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p1

    .line 73
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowPosition:F

    .line 75
    sget p1, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_cornersRadius:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->cornersRadius:F

    .line 76
    sget p1, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_bubbleColor:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->bubbleColor:I

    .line 77
    sget p1, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_strokeWidth:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 78
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeWidth:F

    .line 79
    sget p1, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_BubbleLayout_mapbox_bl_strokeColor:I

    const p3, -0x777778

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeColor:I

    .line 81
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initPadding()V

    return-void
.end method

.method static convertDpToPixel(FLandroid/content/Context;)F
    .locals 0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 101
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 p1, p1, 0xa0

    int-to-float p1, p1

    mul-float p0, p0, p1

    return p0
.end method

.method private initDrawable(IIII)V
    .locals 10

    if-lt p2, p1, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p3, p3

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {v1, p1, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 319
    new-instance p1, Lcom/mapbox/mapboxsdk/annotations/Bubble;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowPosition:F

    iget v6, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->cornersRadius:F

    iget v7, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->bubbleColor:I

    iget v8, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeWidth:F

    iget v9, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeColor:I

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/mapbox/mapboxsdk/annotations/Bubble;-><init>(Landroid/graphics/RectF;Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;FFFFIFI)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->bubble:Lcom/mapbox/mapboxsdk/annotations/Bubble;

    :cond_1
    :goto_0
    return-void
.end method

.method private initPadding()V
    .locals 6

    .line 286
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingLeft()I

    move-result v0

    .line 287
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingRight()I

    move-result v1

    .line 288
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingTop()I

    move-result v2

    .line 289
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingBottom()I

    move-result v3

    .line 290
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    .line 301
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    .line 298
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    .line 295
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    .line 292
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 304
    :goto_0
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeWidth:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 310
    :cond_4
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->setPadding(IIII)V

    return-void
.end method

.method private resetPadding()V
    .locals 6

    .line 324
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingLeft()I

    move-result v0

    .line 325
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingRight()I

    move-result v1

    .line 326
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingTop()I

    move-result v2

    .line 327
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getPaddingBottom()I

    move-result v3

    .line 328
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    .line 339
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    .line 336
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    .line 333
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    .line 330
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 342
    :goto_0
    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeWidth:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    sub-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 348
    :cond_4
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->bubble:Lcom/mapbox/mapboxsdk/annotations/Bubble;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->draw(Landroid/graphics/Canvas;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getArrowDirection()Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    return-object v0
.end method

.method public getArrowHeight()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    return v0
.end method

.method public getArrowPosition()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowPosition:F

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    return v0
.end method

.method public getBubbleColor()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->bubbleColor:I

    return v0
.end method

.method public getCornersRadius()F
    .locals 1

    .line 202
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->cornersRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 246
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeWidth:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 88
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->getHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p3, p2}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initDrawable(IIII)V

    return-void
.end method

.method public setArrowDirection(Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->resetPadding()V

    .line 122
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowDirection:Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;

    .line 123
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setArrowHeight(F)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->resetPadding()V

    .line 168
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowHeight:F

    .line 169
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setArrowPosition(F)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->resetPadding()V

    .line 191
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowPosition:F

    .line 192
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setArrowWidth(F)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->resetPadding()V

    .line 145
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->arrowWidth:F

    .line 146
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setBubbleColor(I)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 235
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->bubbleColor:I

    .line 236
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->requestLayout()V

    return-object p0
.end method

.method public setCornersRadius(F)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 213
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->cornersRadius:F

    .line 214
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->requestLayout()V

    return-object p0
.end method

.method public setStrokeColor(I)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 280
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeColor:I

    .line 281
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->requestLayout()V

    return-object p0
.end method

.method public setStrokeWidth(F)Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->resetPadding()V

    .line 258
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->strokeWidth:F

    .line 259
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method
