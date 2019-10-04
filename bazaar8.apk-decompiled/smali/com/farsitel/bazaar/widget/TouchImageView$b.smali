.class public Lcom/farsitel/bazaar/widget/TouchImageView$b;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public g:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public h:Landroid/graphics/PointF;

.field public i:Landroid/graphics/PointF;

.field public final synthetic j:Lcom/farsitel/bazaar/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;FFFZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->g:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 3
    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->ANIMATE_ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->a:J

    .line 5
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->q(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->b:F

    .line 6
    iput p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->c:F

    .line 7
    iput-boolean p5, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->f:Z

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p3, p4, p2}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object p2

    .line 9
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->d:F

    .line 10
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->e:F

    .line 11
    iget p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->d:F

    iget p3, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->e:F

    invoke-static {p1, p2, p3}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->h:Landroid/graphics/PointF;

    .line 12
    new-instance p2, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->c(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->e(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->i:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final a(F)D
    .locals 4

    .line 5
    iget v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->b:F

    iget v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->c:F

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->q(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final a()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->a:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->g:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public final b(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->h:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->i:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    mul-float p1, p1, v2

    add-float/2addr v0, p1

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->d:F

    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->e:F

    invoke-static {p1, v2, v3}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v2}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/TouchImageView$b;->a()F

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/TouchImageView$b;->a(F)D

    move-result-wide v2

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    iget v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->d:F

    iget v5, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->e:F

    iget-boolean v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->f:Z

    invoke-static/range {v1 .. v6}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;DFFZ)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/TouchImageView$b;->b(F)V

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->k(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 9
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object v1

    invoke-interface {v1}, Lcom/farsitel/bazaar/widget/TouchImageView$e;->a()V

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0, p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$b;->j:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    :goto_0
    return-void
.end method
