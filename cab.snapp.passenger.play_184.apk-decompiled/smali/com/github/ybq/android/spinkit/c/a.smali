.class public final Lcom/github/ybq/android/spinkit/c/a;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .line 48
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/a;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v1}, Lcom/github/ybq/android/spinkit/c/a;->getChildAt(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/github/ybq/android/spinkit/b/f;->setDrawBounds(IIII)V

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p0, v1}, Lcom/github/ybq/android/spinkit/c/a;->getChildAt(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/github/ybq/android/spinkit/b/f;->setDrawBounds(IIII)V

    return-void
.end method

.method public final varargs onChildCreated([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onChildCreated([Lcom/github/ybq/android/spinkit/b/f;)V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 30
    aget-object p1, p1, v1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/b/f;

    return-void

    .line 32
    :cond_0
    aget-object p1, p1, v1

    const/16 v0, -0x3e8

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/b/f;

    return-void
.end method

.method public final onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 38
    fill-array-data v1, :array_0

    .line 39
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x168

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->rotate([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/github/ybq/android/spinkit/a/d;->duration(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 42
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onCreateChild()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/ybq/android/spinkit/b/f;

    .line 20
    new-instance v1, Lcom/github/ybq/android/spinkit/c/a$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/a$a;-><init>(Lcom/github/ybq/android/spinkit/c/a;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/c/a$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/a$a;-><init>(Lcom/github/ybq/android/spinkit/c/a;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
