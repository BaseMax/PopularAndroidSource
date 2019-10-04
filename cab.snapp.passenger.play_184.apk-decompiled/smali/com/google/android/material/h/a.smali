.class public final Lcom/google/android/material/h/a;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# static fields
.field static final a:D


# instance fields
.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/RectF;

.field e:F

.field f:Landroid/graphics/Path;

.field g:F

.field h:F

.field i:F

.field j:F

.field private k:Z

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Z

.field private p:F

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/h/a;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 1

    .line 83
    invoke-direct {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lcom/google/android/material/h/a;->k:Z

    .line 74
    iput-boolean p2, p0, Lcom/google/android/material/h/a;->o:Z

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/google/android/material/h/a;->q:Z

    .line 85
    sget v0, Lcom/google/android/material/a$c;->design_fab_shadow_start_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/h/a;->l:I

    .line 86
    sget v0, Lcom/google/android/material/a$c;->design_fab_shadow_mid_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/h/a;->m:I

    .line 87
    sget v0, Lcom/google/android/material/a$c;->design_fab_shadow_end_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/h/a;->n:I

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    .line 90
    iget-object p1, p0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/h/a;->e:F

    .line 92
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p0, p4, p5}, Lcom/google/android/material/h/a;->setShadowSize(FF)V

    return-void
.end method

.method private static a(F)I
    .locals 2

    .line 100
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 101
    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sub-int/2addr p0, v1

    :cond_0
    return p0
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 178
    sget-wide v4, Lcom/google/android/material/h/a;->a:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float p0, p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 169
    sget-wide v4, Lcom/google/android/material/h/a;->a:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_0
    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 201
    iget-boolean v1, v0, Lcom/google/android/material/h/a;->k:Z

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/h/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1357
    iget v6, v0, Lcom/google/android/material/h/a;->h:F

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float v6, v6, v12

    .line 1358
    iget-object v12, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v14, v0, Lcom/google/android/material/h/a;->h:F

    add-float/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    add-float/2addr v14, v6

    iget v15, v1, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    iget v3, v0, Lcom/google/android/material/h/a;->h:F

    sub-float/2addr v15, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    invoke-virtual {v12, v13, v14, v15, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/h/a;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v6, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v12, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget-object v13, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    .line 1365
    invoke-virtual {v1, v3, v6, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2306
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v6, v3

    neg-float v12, v3

    invoke-direct {v1, v6, v12, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2307
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2308
    iget v6, v0, Lcom/google/android/material/h/a;->i:F

    neg-float v12, v6

    neg-float v6, v6

    invoke-virtual {v3, v12, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 2310
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    if-nez v6, :cond_0

    .line 2311
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    goto :goto_0

    .line 2313
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 2315
    :goto_0
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v6, v12}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2316
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    iget v12, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v12, v12

    invoke-virtual {v6, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2317
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    iget v12, v0, Lcom/google/android/material/h/a;->i:F

    neg-float v12, v12

    invoke-virtual {v6, v12, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2319
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v10, v9, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2321
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    const/high16 v12, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v1, v8, v12, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2322
    iget-object v6, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 2324
    iget v6, v3, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    const/4 v12, 0x2

    const/4 v13, 0x3

    cmpl-float v14, v6, v4

    if-lez v14, :cond_1

    .line 2326
    iget v14, v0, Lcom/google/android/material/h/a;->e:F

    div-float/2addr v14, v6

    sub-float v15, v11, v14

    div-float/2addr v15, v2

    add-float/2addr v15, v14

    .line 2328
    iget-object v9, v0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x4

    new-array v2, v10, [I

    aput v5, v2, v5

    iget v11, v0, Lcom/google/android/material/h/a;->l:I

    const/16 v16, 0x1

    aput v11, v2, v16

    iget v11, v0, Lcom/google/android/material/h/a;->m:I

    aput v11, v2, v12

    iget v11, v0, Lcom/google/android/material/h/a;->n:I

    aput v11, v2, v13

    new-array v10, v10, [F

    aput v4, v10, v5

    aput v14, v10, v16

    aput v15, v10, v12

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v10, v13

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v8

    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v22, v10

    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2341
    :cond_1
    iget-object v2, v0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/LinearGradient;

    const/16 v25, 0x0

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/16 v27, 0x0

    iget v3, v3, Landroid/graphics/RectF;->top:F

    new-array v8, v13, [I

    iget v9, v0, Lcom/google/android/material/h/a;->l:I

    aput v9, v8, v5

    iget v9, v0, Lcom/google/android/material/h/a;->m:I

    const/16 v16, 0x1

    aput v9, v8, v16

    iget v9, v0, Lcom/google/android/material/h/a;->n:I

    aput v9, v8, v12

    new-array v9, v13, [F

    fill-array-data v9, :array_0

    sget-object v31, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v24, v6

    move/from16 v26, v1

    move/from16 v28, v3

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    invoke-direct/range {v24 .. v31}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2350
    iget-object v1, v0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iput-boolean v5, v0, Lcom/google/android/material/h/a;->k:Z

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    .line 3218
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 3219
    iget v1, v0, Lcom/google/android/material/h/a;->p:F

    iget-object v2, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3221
    iget v9, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v1, v9

    iget v2, v0, Lcom/google/android/material/h/a;->i:F

    sub-float v10, v1, v2

    .line 3223
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v11, v9, v2

    sub-float/2addr v1, v11

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 3224
    :goto_2
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v11

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    .line 3226
    :goto_3
    iget v1, v0, Lcom/google/android/material/h/a;->j:F

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v2, v2, v1

    sub-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v1

    sub-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v1, v4

    sub-float/2addr v1, v5

    add-float/2addr v3, v9

    div-float v13, v9, v3

    add-float/2addr v2, v9

    div-float v14, v9, v2

    add-float/2addr v1, v9

    div-float v15, v9, v1

    .line 3235
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 3236
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v9

    iget-object v2, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v9

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3237
    invoke-virtual {v7, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3238
    iget-object v1, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v13

    .line 3241
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x0

    .line 3242
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    .line 3245
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v5, v1

    iget-object v3, v0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v10

    move/from16 v18, v8

    move v8, v6

    move-object/from16 v6, v17

    .line 3242
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    move/from16 v18, v8

    move v8, v6

    .line 3249
    :goto_4
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 3252
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v9

    iget-object v2, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v9

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3253
    invoke-virtual {v7, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x43340000    # 180.0f

    .line 3254
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3255
    iget-object v1, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v13

    .line 3258
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x0

    .line 3259
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    .line 3262
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v1, v1

    iget v3, v0, Lcom/google/android/material/h/a;->i:F

    add-float v5, v1, v3

    iget-object v6, v0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    .line 3259
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3266
    :cond_6
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 3269
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v9

    iget-object v2, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v9

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3270
    invoke-virtual {v7, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    .line 3271
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3272
    iget-object v1, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v15

    .line 3275
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x0

    .line 3276
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    .line 3279
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v5, v1

    iget-object v6, v0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    .line 3276
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3283
    :cond_7
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 3286
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v9

    iget-object v2, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v9

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3287
    invoke-virtual {v7, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 3288
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3289
    iget-object v1, v0, Lcom/google/android/material/h/a;->f:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v14

    .line 3292
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x0

    .line 3293
    iget-object v1, v0, Lcom/google/android/material/h/a;->d:Landroid/graphics/RectF;

    .line 3296
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, Lcom/google/android/material/h/a;->e:F

    neg-float v5, v1

    iget-object v6, v0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    .line 3293
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3300
    :cond_8
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move/from16 v1, v18

    .line 3302
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 207
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 375
    iget v0, p0, Lcom/google/android/material/h/a;->e:F

    return v0
.end method

.method public final getMaxShadowSize()F
    .locals 1

    .line 383
    iget v0, p0, Lcom/google/android/material/h/a;->h:F

    return v0
.end method

.method public final getMinHeight()F
    .locals 5

    .line 392
    iget v0, p0, Lcom/google/android/material/h/a;->h:F

    iget v1, p0, Lcom/google/android/material/h/a;->e:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 393
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v4

    .line 394
    iget v1, p0, Lcom/google/android/material/h/a;->h:F

    mul-float v1, v1, v2

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final getMinWidth()F
    .locals 4

    .line 387
    iget v0, p0, Lcom/google/android/material/h/a;->h:F

    iget v1, p0, Lcom/google/android/material/h/a;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    .line 388
    iget v1, p0, Lcom/google/android/material/h/a;->h:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 154
    iget v0, p0, Lcom/google/android/material/h/a;->h:F

    iget v1, p0, Lcom/google/android/material/h/a;->e:F

    iget-boolean v2, p0, Lcom/google/android/material/h/a;->o:Z

    .line 157
    invoke-static {v0, v1, v2}, Lcom/google/android/material/h/a;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 158
    iget v1, p0, Lcom/google/android/material/h/a;->h:F

    iget v2, p0, Lcom/google/android/material/h/a;->e:F

    iget-boolean v3, p0, Lcom/google/android/material/h/a;->o:Z

    .line 161
    invoke-static {v1, v2, v3}, Lcom/google/android/material/h/a;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 162
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public final getShadowSize()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/android/material/h/a;->j:F

    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/google/android/material/h/a;->k:Z

    return-void
.end method

.method public final setAddPaddingForCorners(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/h/a;->o:Z

    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/h/a;->invalidateSelf()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/material/h/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 1

    .line 190
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 191
    iget v0, p0, Lcom/google/android/material/h/a;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iput p1, p0, Lcom/google/android/material/h/a;->e:F

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/google/android/material/h/a;->k:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/h/a;->invalidateSelf()V

    return-void
.end method

.method public final setMaxShadowSize(F)V
    .locals 1

    .line 379
    iget v0, p0, Lcom/google/android/material/h/a;->j:F

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/h/a;->setShadowSize(FF)V

    return-void
.end method

.method public final setRotation(F)V
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/android/material/h/a;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 212
    iput p1, p0, Lcom/google/android/material/h/a;->p:F

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/h/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setShadowSize(F)V
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/android/material/h/a;->h:F

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/h/a;->setShadowSize(FF)V

    return-void
.end method

.method public final setShadowSize(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 125
    invoke-static {p1}, Lcom/google/android/material/h/a;->a(F)I

    move-result p1

    int-to-float p1, p1

    .line 126
    invoke-static {p2}, Lcom/google/android/material/h/a;->a(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    .line 129
    iget-boolean p1, p0, Lcom/google/android/material/h/a;->q:Z

    if-nez p1, :cond_0

    .line 130
    iput-boolean v0, p0, Lcom/google/android/material/h/a;->q:Z

    :cond_0
    move p1, p2

    .line 133
    :cond_1
    iget v1, p0, Lcom/google/android/material/h/a;->j:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/h/a;->h:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_2

    return-void

    .line 136
    :cond_2
    iput p1, p0, Lcom/google/android/material/h/a;->j:F

    .line 137
    iput p2, p0, Lcom/google/android/material/h/a;->h:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float p1, p1, v1

    .line 138
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/h/a;->i:F

    .line 139
    iput p2, p0, Lcom/google/android/material/h/a;->g:F

    .line 140
    iput-boolean v0, p0, Lcom/google/android/material/h/a;->k:Z

    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/h/a;->invalidateSelf()V

    return-void

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid shadow size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
