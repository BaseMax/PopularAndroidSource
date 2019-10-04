.class public Lme/dm7/barcodescanner/core/ViewFinderView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lme/dm7/barcodescanner/core/e;


# static fields
.field private static final g:[I


# instance fields
.field protected a:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:I

.field protected e:Z

.field private f:Landroid/graphics/Rect;

.field private h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Z

.field private o:F

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->g:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/f$a;->viewfinder_laser:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->i:I

    .line 34
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/f$a;->viewfinder_mask:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:I

    .line 35
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/f$a;->viewfinder_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:I

    .line 36
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/f$b;->viewfinder_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:I

    .line 37
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/f$b;->viewfinder_border_length:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    .line 50
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lme/dm7/barcodescanner/core/f$a;->viewfinder_laser:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->i:I

    .line 34
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lme/dm7/barcodescanner/core/f$a;->viewfinder_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:I

    .line 35
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lme/dm7/barcodescanner/core/f$a;->viewfinder_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:I

    .line 36
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lme/dm7/barcodescanner/core/f$b;->viewfinder_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:I

    .line 37
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lme/dm7/barcodescanner/core/f$b;->viewfinder_border_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:I

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    .line 55
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->m:I

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    return-void
.end method


# virtual methods
.method public drawLaser(Landroid/graphics/Canvas;)V
    .locals 9

    .line 202
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Paint;

    sget-object v2, Lme/dm7/barcodescanner/core/ViewFinderView;->g:[I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->h:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->h:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lme/dm7/barcodescanner/core/ViewFinderView;->g:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->h:I

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 208
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    add-int/lit8 v2, v1, -0x1

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    add-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    iget-object v8, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, p1, -0xa

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, p1, -0xa

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, p1, 0xa

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, p1, 0xa

    const-wide/16 v2, 0x50

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lme/dm7/barcodescanner/core/ViewFinderView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public drawViewFinderBorder(Landroid/graphics/Canvas;)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 177
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 196
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawViewFinderMask(Landroid/graphics/Canvas;)V
    .locals 10

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 164
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v2

    int-to-float v0, v0

    .line 166
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    iget-object v8, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget-object v9, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v7, v3

    iget-object v8, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    move-object v3, p1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    int-to-float v7, v1

    iget-object v8, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 144
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderMask(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderBorder(Landroid/graphics/Canvas;)V

    .line 156
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawLaser(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 118
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->o:F

    .line 119
    iget-object p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    int-to-float p1, p1

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public setBorderCornerRounded(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void

    .line 111
    :cond_0
    iget-object p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 0

    .line 100
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->d:I

    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->c:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->n:Z

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->e:Z

    return-void
.end method

.method public setViewFinderOffset(I)V
    .locals 0

    .line 129
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    return-void
.end method

.method public setupViewFinder()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    .line 140
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->invalidate()V

    return-void
.end method

.method public declared-synchronized updateFramingRect()V
    .locals 8

    monitor-enter p0

    .line 223
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 226
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/dm7/barcodescanner/core/d;->getScreenOrientation(Landroid/content/Context;)I

    move-result v1

    .line 228
    iget-boolean v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->e:Z

    const/4 v3, 0x1

    const/high16 v4, 0x3f200000    # 0.625f

    if-eqz v2, :cond_1

    if-eq v1, v3, :cond_0

    .line 230
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    move v2, v1

    goto :goto_1

    :cond_1
    if-eq v1, v3, :cond_2

    .line 238
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    const v2, 0x3fb33333    # 1.4f

    int-to-float v3, v1

    mul-float v3, v3, v2

    float-to-int v2, v3

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v3, v1

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 246
    :goto_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_3

    .line 247
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    .line 250
    :cond_3
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 251
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    .line 254
    :cond_4
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 255
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 256
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    add-int/2addr v5, v3

    iget v6, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    add-int/2addr v6, v0

    add-int/2addr v3, v1

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    sub-int/2addr v3, v1

    add-int/2addr v0, v2

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->p:I

    sub-int/2addr v0, v1

    invoke-direct {v4, v5, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->f:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
