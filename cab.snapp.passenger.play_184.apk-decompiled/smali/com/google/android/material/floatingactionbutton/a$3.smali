.class final Lcom/google/android/material/floatingactionbutton/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/a;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a$3;->a:Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 612
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a$3;->a:Lcom/google/android/material/floatingactionbutton/a;

    .line 1599
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->x:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getRotation()F

    move-result v1

    .line 1600
    iget v2, v0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    .line 1601
    iput v1, v0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    .line 1729
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    .line 1732
    iget v1, v0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1733
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->x:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getLayerType()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1734
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->x:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1737
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->x:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1738
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->x:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1744
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->f:Lcom/google/android/material/h/a;

    if-eqz v1, :cond_2

    .line 1745
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->f:Lcom/google/android/material/h/a;

    iget v2, v0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/h/a;->setRotation(F)V

    .line 1747
    :cond_2
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->j:Lcom/google/android/material/internal/a;

    if-eqz v1, :cond_3

    .line 1748
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/a;->j:Lcom/google/android/material/internal/a;

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->setRotation(F)V

    :cond_3
    return v3
.end method
