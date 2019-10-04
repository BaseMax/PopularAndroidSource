.class public Lf/a/a/e/c/b;
.super Landroid/graphics/drawable/Drawable;
.source "DotsDrawable.java"


# instance fields
.field public a:I

.field public b:Landroid/graphics/ColorFilter;

.field public c:F

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lf/a/a/e/c/b;->a:I

    .line 3
    new-instance v0, Landroid/graphics/ColorFilter;

    invoke-direct {v0}, Landroid/graphics/ColorFilter;-><init>()V

    iput-object v0, p0, Lf/a/a/e/c/b;->b:Landroid/graphics/ColorFilter;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    .line 6
    iget-object v0, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p1, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    iget v0, p0, Lf/a/a/e/c/b;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object p1, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lf/a/a/e/c/b;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    sub-float v1, p3, p4

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    add-float v2, p2, p4

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    add-float v2, p3, p4

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    sub-float p4, p2, p4

    invoke-virtual {v0, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object p3, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object p2, p0, Lf/a/a/e/c/b;->e:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    const/4 v3, 0x3

    .line 3
    new-array v9, v3, [F

    iget v3, p0, Lf/a/a/e/c/b;->c:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide v6, 0x4022d97c7f3321d2L    # 9.42477796076938

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-float v12, v3, v5

    if-gez v12, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const v12, 0x3f555555

    cmpg-float v12, v3, v12

    if-gez v12, :cond_1

    sub-float/2addr v3, v5

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    sub-double v12, v10, v12

    double-to-float v3, v12

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x0

    aput v3, v9, v5

    iget v3, p0, Lf/a/a/e/c/b;->c:F

    const/high16 v12, 0x3e800000    # 0.25f

    cmpg-float v13, v3, v12

    if-gez v13, :cond_2

    goto :goto_1

    :cond_2
    const v4, 0x3f155555

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    sub-float/2addr v3, v12

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v10

    sub-double v3, v10, v3

    double-to-float v4, v3

    goto :goto_1

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    const/4 v12, 0x1

    aput v4, v9, v12

    iget v3, p0, Lf/a/a/e/c/b;->c:F

    const v4, 0x3eaaaaab

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v10

    sub-double/2addr v10, v3

    double-to-float v8, v10

    :cond_4
    aput v8, v9, v1

    .line 6
    aget v3, v9, v5

    aget v4, v9, v12

    add-float/2addr v3, v4

    aget v4, v9, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float v10, v3, v4

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v11, v2, v3

    sub-float v3, v0, v2

    .line 7
    :try_start_0
    aget v4, v9, v5

    sub-float/2addr v4, v10

    mul-float v4, v4, v11

    add-float v5, v3, v4

    iget-object v8, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lf/a/a/e/c/b;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 8
    aget v3, v9, v12

    sub-float/2addr v3, v10

    mul-float v3, v3, v11

    add-float v5, v0, v3

    iget-object v8, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lf/a/a/e/c/b;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    add-float/2addr v0, v2

    .line 9
    aget v1, v9, v1

    sub-float/2addr v1, v10

    mul-float v11, v11, v1

    add-float v5, v0, v11

    iget-object v8, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lf/a/a/e/c/b;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/e/c/b;->a:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/c/b;->b:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/e/c/b;->a:I

    return v0
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 2
    rem-int/lit16 p1, p1, 0x1388

    int-to-float p1, p1

    const v0, 0x459c4000    # 5000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lf/a/a/e/c/b;->c:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iput p1, p0, Lf/a/a/e/c/b;->a:I

    .line 2
    iget-object v0, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/a/a/e/c/b;->b:Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p0, Lf/a/a/e/c/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
