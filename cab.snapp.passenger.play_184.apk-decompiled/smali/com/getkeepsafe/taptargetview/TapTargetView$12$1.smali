.class final Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView$12;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView$12;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 453
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->a:Lcom/getkeepsafe/taptargetview/c;

    invoke-virtual {v3}, Lcom/getkeepsafe/taptargetview/c;->bounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 455
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v2, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getLocationOnScreen([I)V

    .line 456
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 458
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->c:Landroid/content/Context;

    const-string v2, "window"

    .line 460
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 461
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 462
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 464
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 465
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-array v0, v0, [I

    .line 467
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 469
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-boolean v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Z

    if-eqz v4, :cond_0

    .line 470
    aget v4, v0, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 472
    :cond_0
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-boolean v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->e:Z

    if-eqz v4, :cond_1

    .line 473
    aget v0, v0, v5

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    .line 480
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1866
    iget-object v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    .line 1867
    iget-boolean v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->B:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    .line 1872
    :cond_3
    iget-object v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 1874
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    .line 1876
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1877
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    .line 1878
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v0, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1877
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1879
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1880
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1868
    :cond_4
    :goto_0
    iput-object v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    .line 484
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->requestFocus()Z

    .line 485
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1917
    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    .line 1918
    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getOuterCircleCenterPoint()[I

    move-result-object v1

    iput-object v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    .line 1919
    iget-object v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v1, v1, v3

    iget-object v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v2, v5

    iget-object v3, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 1937
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 1938
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    const v6, 0x3f8ccccd    # 1.1f

    .line 1939
    iget v7, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v6, v7

    .line 1940
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v4, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int v4, v6

    .line 1941
    invoke-virtual {v7, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1943
    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IILandroid/graphics/Rect;)I

    move-result v3

    .line 1944
    invoke-static {v1, v2, v7}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IILandroid/graphics/Rect;)I

    move-result v1

    .line 1945
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    add-int/2addr v1, v2

    .line 1919
    iput v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    .line 487
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->c(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void
.end method
