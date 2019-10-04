.class Lcom/mapbox/mapboxsdk/annotations/Bubble;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private arrowHeight:F

.field private arrowPosition:F

.field private arrowWidth:F

.field private cornersRadius:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/RectF;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokePath:Landroid/graphics/Path;

.field private strokeWidth:F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;FFFFIFI)V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->paint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->path:Landroid/graphics/Path;

    .line 31
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    .line 32
    iput p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    .line 33
    iput p4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    .line 34
    iput p5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    .line 35
    iput p6, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    .line 36
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iput p8, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokeWidth:F

    const/4 p1, 0x0

    cmpl-float p3, p8, p1

    if-lez p3, :cond_0

    .line 40
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    .line 41
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    .line 43
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->path:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p8}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initPath(Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    .line 44
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p1}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initPath(Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    return-void

    .line 46
    :cond_0
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->path:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p1}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initPath(Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    return-void
.end method

.method private initBottomRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 7

    .line 293
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 294
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 295
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p3

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 298
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 302
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    sub-float/2addr v0, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, p3

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    div-float/2addr v4, v2

    add-float/2addr v0, v4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 304
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 310
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iget p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p1

    invoke-direct {v0, v2, v3, p3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 313
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    .line 278
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 279
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 280
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    sub-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 285
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initLeftRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 163
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p3

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 168
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 172
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 177
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iget p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr p3, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p1

    invoke-direct {v0, v2, v3, p3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 188
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    .line 146
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    div-float/2addr v4, v2

    add-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initPath(Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;Landroid/graphics/Path;F)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/ArrowDirection;->getValue()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_1
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    cmpl-float p1, p3, p1

    if-lez p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initBottomRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    :goto_0
    return-void

    .line 104
    :cond_3
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_4
    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    .line 110
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initTopRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    .line 117
    :cond_6
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    .line 118
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_7
    cmpl-float v0, p3, v0

    if-lez v0, :cond_8

    cmpl-float p1, p3, p1

    if-lez p1, :cond_8

    .line 123
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    .line 127
    :cond_8
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initRightRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    .line 91
    :cond_9
    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    .line 92
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_a
    cmpl-float v0, p3, v0

    if-lez v0, :cond_b

    cmpl-float p1, p3, p1

    if-lez p1, :cond_b

    .line 97
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    .line 101
    :cond_b
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/annotations/Bubble;->initLeftRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void
.end method

.method private initRightRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 255
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 260
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p3

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, p3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 267
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 272
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iget p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p1

    invoke-direct {v0, v2, v3, p3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 274
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    .line 239
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    div-float/2addr v4, v2

    add-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initTopRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 211
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 213
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p3

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 221
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 225
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 230
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget p3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v4

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->cornersRadius:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p1

    iget p1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v4, p1

    invoke-direct {v0, v2, v3, p3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 235
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    .line 192
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 194
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 205
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->arrowHeight:F

    add-float/2addr p1, v1

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 57
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
