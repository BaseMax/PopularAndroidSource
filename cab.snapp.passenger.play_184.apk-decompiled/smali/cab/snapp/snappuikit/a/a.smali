.class public final Lcab/snapp/snappuikit/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Shader$TileMode;

.field private m:Landroid/graphics/Shader$TileMode;

.field private n:Z

.field private o:F

.field private final p:[Z

.field private q:Z

.field private r:F

.field private s:Landroid/content/res/ColorStateList;

.field private t:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 71
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    .line 52
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->l:Landroid/graphics/Shader$TileMode;

    .line 53
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcab/snapp/snappuikit/a/a;->m:Landroid/graphics/Shader$TileMode;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcab/snapp/snappuikit/a/a;->n:Z

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcab/snapp/snappuikit/a/a;->o:F

    const/4 v2, 0x4

    new-array v2, v2, [Z

    .line 58
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v2, 0x0

    .line 60
    iput-boolean v2, p0, Lcab/snapp/snappuikit/a/a;->q:Z

    .line 61
    iput v1, p0, Lcab/snapp/snappuikit/a/a;->r:F

    const/high16 v2, -0x1000000

    .line 62
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    .line 63
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lcab/snapp/snappuikit/a/a;->t:Landroid/widget/ImageView$ScaleType;

    .line 72
    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->d:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcab/snapp/snappuikit/a/a;->f:I

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/a/a;->g:I

    .line 76
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    .line 79
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    .line 83
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    iget v0, p0, Lcab/snapp/snappuikit/a/a;->r:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private a()V
    .locals 8

    .line 196
    sget-object v0, Lcab/snapp/snappuikit/a/a$1;->a:[I

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->t:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 259
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 260
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 261
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 262
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 263
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 283
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 284
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 285
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 286
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 275
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 276
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 277
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 278
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 279
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 267
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 268
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 269
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 270
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 271
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 233
    :cond_3
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 235
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v0, v0

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v0, v0

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    .line 242
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 241
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 245
    :goto_0
    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    .line 246
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    sub-float/2addr v5, v6

    mul-float v5, v5, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    .line 248
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 249
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 251
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 252
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 253
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 254
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 208
    :cond_5
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 209
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 216
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v0, v0

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v0, v0, v4

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    .line 218
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 219
    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v6, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    sub-float/2addr v4, v6

    mul-float v4, v4, v2

    goto :goto_1

    .line 223
    :cond_6
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 224
    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v6, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    sub-float/2addr v4, v6

    mul-float v4, v4, v2

    move v5, v4

    const/4 v4, 0x0

    .line 227
    :goto_1
    iget-object v6, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 228
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    iget v6, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v7, v6, v3

    add-float/2addr v4, v7

    add-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    div-float/2addr v6, v3

    add-float/2addr v2, v6

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 199
    :cond_7
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->r:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 202
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 203
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcab/snapp/snappuikit/a/a;->f:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    .line 204
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcab/snapp/snappuikit/a/a;->g:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    .line 203
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 290
    :goto_2
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 291
    iput-boolean v1, p0, Lcab/snapp/snappuikit/a/a;->n:Z

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 361
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    invoke-static {v0}, Lcab/snapp/snappuikit/a/a;->b([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 373
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 374
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v0

    .line 375
    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v1

    .line 376
    iget v4, p0, Lcab/snapp/snappuikit/a/a;->o:F

    .line 378
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    .line 380
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    add-float v6, v0, v4

    add-float v7, v1, v4

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 381
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    iget-object v6, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 384
    :cond_2
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3

    .line 386
    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    sub-float v6, v2, v4

    invoke-virtual {v5, v6, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 387
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 390
    :cond_3
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v5, 0x2

    aget-boolean v1, v1, v5

    if-nez v1, :cond_4

    .line 392
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    sub-float v5, v2, v4

    sub-float v6, v3, v4

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 393
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 396
    :cond_4
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5

    .line 398
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    sub-float v2, v3, v4

    add-float/2addr v4, v0

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 399
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private static a(I[Z)Z
    .locals 5

    .line 713
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 715
    aget-boolean v4, p1, v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eq v4, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static a([Z)Z
    .locals 4

    .line 725
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static b([Z)Z
    .locals 4

    .line 737
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 139
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 141
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 149
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcab/snapp/snappuikit/a/a;
    .locals 1

    if-eqz p0, :cond_0

    .line 93
    new-instance v0, Lcab/snapp/snappuikit/a/a;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/a/a;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_3

    .line 108
    instance-of v0, p0, Lcab/snapp/snappuikit/a/a;

    if-eqz v0, :cond_0

    return-object p0

    .line 113
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 115
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 122
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcab/snapp/snappuikit/a/a;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 128
    :cond_2
    invoke-static {p0}, Lcab/snapp/snappuikit/a/a;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 131
    new-instance p0, Lcab/snapp/snappuikit/a/a;

    invoke-direct {p0, v0}, Lcab/snapp/snappuikit/a/a;-><init>(Landroid/graphics/Bitmap;)V

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 307
    iget-boolean v0, p0, Lcab/snapp/snappuikit/a/a;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->d:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->l:Landroid/graphics/Shader$TileMode;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->m:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 310
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->l:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->m:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    .line 312
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 314
    :cond_0
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 315
    iput-boolean v1, p0, Lcab/snapp/snappuikit/a/a;->n:Z

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcab/snapp/snappuikit/a/a;->q:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 320
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 327
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 332
    :cond_3
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    invoke-static {v0}, Lcab/snapp/snappuikit/a/a;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->o:F

    .line 335
    iget v3, p0, Lcab/snapp/snappuikit/a/a;->r:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_8

    .line 337
    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 338
    iget-object v3, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v4, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/a/a;->a(Landroid/graphics/Canvas;)V

    .line 1405
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    invoke-static {v0}, Lcab/snapp/snappuikit/a/a;->b([Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1411
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->o:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 1416
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 1417
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->top:F

    .line 1418
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float v10, v0, v2

    .line 1419
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v11, v9, v2

    .line 1420
    iget v12, p0, Lcab/snapp/snappuikit/a/a;->o:F

    .line 1421
    iget v2, p0, Lcab/snapp/snappuikit/a/a;->r:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 1423
    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    aget-boolean v1, v2, v1

    if-nez v1, :cond_4

    sub-float v4, v0, v13

    add-float v6, v0, v12

    .line 1425
    iget-object v8, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v13

    add-float v6, v9, v12

    .line 1426
    iget-object v7, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1429
    :cond_4
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5

    sub-float v1, v10, v12

    sub-float v4, v1, v13

    .line 1431
    iget-object v8, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v6, v10

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v9, v13

    add-float v7, v9, v12

    .line 1432
    iget-object v8, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1435
    :cond_5
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_6

    sub-float v1, v10, v12

    sub-float v4, v1, v13

    add-float v6, v10, v13

    .line 1437
    iget-object v8, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v11

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v11, v12

    .line 1438
    iget-object v8, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move v4, v10

    move v6, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1441
    :cond_6
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_7

    sub-float v4, v0, v13

    add-float v6, v0, v12

    .line 1443
    iget-object v8, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v11

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v11, v12

    .line 1444
    iget-object v7, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v5, v0

    move v6, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    return-void

    .line 344
    :cond_8
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 345
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/a/a;->a(Landroid/graphics/Canvas;)V

    return-void

    .line 350
    :cond_9
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 351
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    .line 353
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 457
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBorderColor()I
    .locals 1

    .line 629
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public final getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 639
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getBorderWidth()F
    .locals 1

    .line 617
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->r:F

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 470
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 511
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->o:F

    return v0
.end method

.method public final getCornerRadius(I)F
    .locals 1

    .line 520
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcab/snapp/snappuikit/a/a;->o:F

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 503
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->g:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 497
    iget v0, p0, Lcab/snapp/snappuikit/a/a;->f:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 662
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->t:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 166
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 681
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->l:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public final getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 697
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->m:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public final isOval()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcab/snapp/snappuikit/a/a;->q:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 299
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 301
    invoke-direct {p0}, Lcab/snapp/snappuikit/a/a;->a()V

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 179
    iget-object v1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 181
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    return p1

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 464
    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->invalidateSelf()V

    return-void
.end method

.method public final setBorderColor(I)Lcab/snapp/snappuikit/a/a;
    .locals 0

    .line 634
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/a/a;->setBorderColor(Landroid/content/res/ColorStateList;)Lcab/snapp/snappuikit/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final setBorderColor(Landroid/content/res/ColorStateList;)Lcab/snapp/snappuikit/a/a;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 644
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    .line 645
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public final setBorderWidth(F)Lcab/snapp/snappuikit/a/a;
    .locals 1

    .line 622
    iput p1, p0, Lcab/snapp/snappuikit/a/a;->r:F

    .line 623
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->i:Landroid/graphics/Paint;

    iget v0, p0, Lcab/snapp/snappuikit/a/a;->r:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 477
    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->invalidateSelf()V

    return-void
.end method

.method public final setCornerRadius(F)Lcab/snapp/snappuikit/a/a;
    .locals 0

    .line 531
    invoke-virtual {p0, p1, p1, p1, p1}, Lcab/snapp/snappuikit/a/a;->setCornerRadius(FFFF)Lcab/snapp/snappuikit/a/a;

    return-object p0
.end method

.method public final setCornerRadius(FFFF)Lcab/snapp/snappuikit/a/a;
    .locals 4

    .line 581
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 582
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 587
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    .line 594
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 597
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 601
    iput v0, p0, Lcab/snapp/snappuikit/a/a;->o:F

    goto :goto_0

    .line 599
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid radius value: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 605
    :cond_1
    iput v1, p0, Lcab/snapp/snappuikit/a/a;->o:F

    .line 608
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v2, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    aput-boolean p1, v0, v2

    .line 609
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    aput-boolean p2, p1, v3

    .line 610
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 p2, 0x2

    cmpl-float p3, p3, v1

    if-lez p3, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    aput-boolean p3, p1, p2

    .line 611
    iget-object p1, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 p2, 0x3

    cmpl-float p3, p4, v1

    if-lez p3, :cond_5

    const/4 v2, 0x1

    :cond_5
    aput-boolean v2, p1, p2

    return-object p0

    .line 591
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCornerRadius(IF)Lcab/snapp/snappuikit/a/a;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    .line 544
    iget v1, p0, Lcab/snapp/snappuikit/a/a;->o:F

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    cmpl-float v1, p2, v0

    if-nez v1, :cond_3

    .line 551
    iget-object p2, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    invoke-static {p1, p2}, Lcab/snapp/snappuikit/a/a;->a(I[Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 553
    iput v0, p0, Lcab/snapp/snappuikit/a/a;->o:F

    .line 555
    :cond_2
    iget-object p2, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v0, 0x0

    aput-boolean v0, p2, p1

    goto :goto_1

    .line 559
    :cond_3
    iget v1, p0, Lcab/snapp/snappuikit/a/a;->o:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 561
    iput p2, p0, Lcab/snapp/snappuikit/a/a;->o:F

    .line 563
    :cond_4
    iget-object p2, p0, Lcab/snapp/snappuikit/a/a;->p:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    :goto_1
    return-object p0
.end method

.method public final setDither(Z)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 484
    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->invalidateSelf()V

    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 491
    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->invalidateSelf()V

    return-void
.end method

.method public final setOval(Z)Lcab/snapp/snappuikit/a/a;
    .locals 0

    .line 656
    iput-boolean p1, p0, Lcab/snapp/snappuikit/a/a;->q:Z

    return-object p0
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)Lcab/snapp/snappuikit/a/a;
    .locals 1

    if-nez p1, :cond_0

    .line 669
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 671
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->t:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 673
    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->t:Landroid/widget/ImageView$ScaleType;

    .line 674
    invoke-direct {p0}, Lcab/snapp/snappuikit/a/a;->a()V

    :cond_1
    return-object p0
.end method

.method public final setTileModeX(Landroid/graphics/Shader$TileMode;)Lcab/snapp/snappuikit/a/a;
    .locals 1

    .line 686
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->l:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 688
    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->l:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 689
    iput-boolean p1, p0, Lcab/snapp/snappuikit/a/a;->n:Z

    .line 690
    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)Lcab/snapp/snappuikit/a/a;
    .locals 1

    .line 702
    iget-object v0, p0, Lcab/snapp/snappuikit/a/a;->m:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 704
    iput-object p1, p0, Lcab/snapp/snappuikit/a/a;->m:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 705
    iput-boolean p1, p0, Lcab/snapp/snappuikit/a/a;->n:Z

    .line 706
    invoke-virtual {p0}, Lcab/snapp/snappuikit/a/a;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public final toBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 749
    invoke-static {p0}, Lcab/snapp/snappuikit/a/a;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
