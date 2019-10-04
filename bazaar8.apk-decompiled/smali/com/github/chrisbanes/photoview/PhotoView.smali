.class public Lcom/github/chrisbanes/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field public c:Lc/d/a/a/p;

.field public d:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/a/p;

    invoke-direct {v0, p0}, Lc/d/a/a/p;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->d:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->d:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->b(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->b(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public getAttacher()Lc/d/a/a/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->f()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->h()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->i()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->j()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->k()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->l()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->m()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Z)V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {p2}, Lc/d/a/a/p;->o()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/d/a/a/p;->o()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/d/a/a/p;->o()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/d/a/a/p;->o()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->b(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->c(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lc/d/a/a/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/e;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lc/d/a/a/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/f;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lc/d/a/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/g;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lc/d/a/a/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/h;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lc/d/a/a/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/i;)V

    return-void
.end method

.method public setOnViewDragListener(Lc/d/a/a/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/j;)V

    return-void
.end method

.method public setOnViewTapListener(Lc/d/a/a/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Lc/d/a/a/k;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->d(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->e(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->f(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->d:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->a(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Lc/d/a/a/p;

    invoke-virtual {v0, p1}, Lc/d/a/a/p;->b(Z)V

    return-void
.end method
