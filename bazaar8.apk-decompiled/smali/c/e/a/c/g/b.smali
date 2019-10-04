.class public Lc/e/a/c/g/b;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field public static final a:Z


# instance fields
.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public final m:Landroid/graphics/Paint;

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/RectF;

.field public p:Landroid/graphics/drawable/GradientDrawable;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/GradientDrawable;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/graphics/drawable/GradientDrawable;

.field public u:Landroid/graphics/drawable/GradientDrawable;

.field public v:Landroid/graphics/drawable/GradientDrawable;

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lc/e/a/c/g/b;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/e/a/c/g/b;->n:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/e/a/c/g/b;->o:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lc/e/a/c/g/b;->w:Z

    .line 6
    iput-object p1, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 39
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lc/e/a/c/g/b;->p:Landroid/graphics/drawable/GradientDrawable;

    .line 40
    iget-object v0, p0, Lc/e/a/c/g/b;->p:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lc/e/a/c/g/b;->g:I

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 41
    iget-object v0, p0, Lc/e/a/c/g/b;->p:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 42
    iget-object v0, p0, Lc/e/a/c/g/b;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Lb/i/c/a/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/g/b;->q:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p0, Lc/e/a/c/g/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v3}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 44
    iget-object v0, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 45
    iget-object v3, p0, Lc/e/a/c/g/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 46
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lc/e/a/c/g/b;->r:Landroid/graphics/drawable/GradientDrawable;

    .line 47
    iget-object v0, p0, Lc/e/a/c/g/b;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lc/e/a/c/g/b;->g:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 48
    iget-object v0, p0, Lc/e/a/c/g/b;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 49
    iget-object v0, p0, Lc/e/a/c/g/b;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Lb/i/c/a/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/g/b;->s:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v0, p0, Lc/e/a/c/g/b;->s:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lc/e/a/c/g/b;->l:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 51
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lc/e/a/c/g/b;->q:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc/e/a/c/g/b;->s:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lc/e/a/c/g/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7

    .line 52
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lc/e/a/c/g/b;->c:I

    iget v3, p0, Lc/e/a/c/g/b;->e:I

    iget v4, p0, Lc/e/a/c/g/b;->d:I

    iget v5, p0, Lc/e/a/c/g/b;->f:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method public a(I)V
    .locals 1

    .line 61
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 63
    :cond_0
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/g/b;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 4

    .line 59
    iget-object v0, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 60
    iget v1, p0, Lc/e/a/c/g/b;->c:I

    iget v2, p0, Lc/e/a/c/g/b;->e:I

    iget v3, p0, Lc/e/a/c/g/b;->d:I

    sub-int/2addr p2, v3

    iget v3, p0, Lc/e/a/c/g/b;->f:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lc/e/a/c/g/b;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 66
    iput-object p1, p0, Lc/e/a/c/g/b;->l:Landroid/content/res/ColorStateList;

    .line 67
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/g/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 70
    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 1
    sget v0, Lc/e/a/c/k;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lc/e/a/c/g/b;->c:I

    .line 2
    sget v0, Lc/e/a/c/k;->MaterialButton_android_insetRight:I

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lc/e/a/c/g/b;->d:I

    .line 4
    sget v0, Lc/e/a/c/k;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lc/e/a/c/g/b;->e:I

    .line 5
    sget v0, Lc/e/a/c/k;->MaterialButton_android_insetBottom:I

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lc/e/a/c/g/b;->f:I

    .line 7
    sget v0, Lc/e/a/c/k;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lc/e/a/c/g/b;->g:I

    .line 8
    sget v0, Lc/e/a/c/k;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lc/e/a/c/g/b;->h:I

    .line 9
    sget v0, Lc/e/a/c/k;->MaterialButton_backgroundTintMode:I

    const/4 v2, -0x1

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 11
    invoke-static {v0, v2}, Lc/e/a/c/l/q;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 13
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lc/e/a/c/k;->MaterialButton_backgroundTint:I

    .line 14
    invoke-static {v0, p1, v2}, Lc/e/a/c/o/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    .line 15
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 16
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lc/e/a/c/k;->MaterialButton_strokeColor:I

    .line 17
    invoke-static {v0, p1, v2}, Lc/e/a/c/o/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    .line 18
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 19
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lc/e/a/c/k;->MaterialButton_rippleColor:I

    .line 20
    invoke-static {v0, p1, v2}, Lc/e/a/c/o/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/c/g/b;->l:Landroid/content/res/ColorStateList;

    .line 21
    iget-object p1, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object p1, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    iget v0, p0, Lc/e/a/c/g/b;->h:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iget-object p1, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 24
    invoke-virtual {v2}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 25
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object p1, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Lb/i/k/z;->q(Landroid/view/View;)I

    move-result p1

    .line 27
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    .line 28
    iget-object v1, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1}, Lb/i/k/z;->p(Landroid/view/View;)I

    move-result v1

    .line 29
    iget-object v2, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    .line 30
    iget-object v3, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    sget-boolean v4, Lc/e/a/c/g/b;->a:Z

    if-eqz v4, :cond_1

    .line 31
    invoke-virtual {p0}, Lc/e/a/c/g/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/e/a/c/g/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 32
    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v3, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    iget v4, p0, Lc/e/a/c/g/b;->c:I

    add-int/2addr p1, v4

    iget v4, p0, Lc/e/a/c/g/b;->e:I

    add-int/2addr v0, v4

    iget v4, p0, Lc/e/a/c/g/b;->d:I

    add-int/2addr v1, v4

    iget v4, p0, Lc/e/a/c/g/b;->f:I

    add-int/2addr v2, v4

    invoke-static {v3, p1, v0, v1, v2}, Lb/i/k/z;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/c/g/b;->h:I

    if-lez v0, :cond_0

    .line 35
    iget-object v0, p0, Lc/e/a/c/g/b;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    iget-object v0, p0, Lc/e/a/c/g/b;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/e/a/c/g/b;->n:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lc/e/a/c/g/b;->h:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iget v4, p0, Lc/e/a/c/g/b;->c:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v6, v3

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    iget v6, p0, Lc/e/a/c/g/b;->e:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, v3

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget v7, p0, Lc/e/a/c/g/b;->d:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget v3, p0, Lc/e/a/c/g/b;->f:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    iget v0, p0, Lc/e/a/c/g/b;->g:I

    int-to-float v0, v0

    iget v1, p0, Lc/e/a/c/g/b;->h:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    .line 38
    iget-object v1, p0, Lc/e/a/c/g/b;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_1

    .line 54
    iput-object p1, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    .line 55
    sget-boolean p1, Lc/e/a/c/g/b;->a:Z

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lc/e/a/c/g/b;->n()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lc/e/a/c/g/b;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    iget-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lc/e/a/c/g/b;->g:I

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Lc/e/a/c/g/b;->n()V

    .line 5
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    iget-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lc/e/a/c/g/b;->g:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 7
    iget-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 8
    iget-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lc/e/a/c/g/b;->h:I

    iget-object v5, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 9
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    aput-object v5, v4, v3

    iget-object v3, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p0, v0}, Lc/e/a/c/g/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    .line 11
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    .line 12
    iget-object v3, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lc/e/a/c/g/b;->g:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 13
    iget-object v2, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 14
    new-instance v1, Lc/e/a/c/g/a;

    iget-object v2, p0, Lc/e/a/c/g/b;->l:Landroid/content/res/ColorStateList;

    .line 15
    invoke-static {v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0, v3}, Lc/e/a/c/g/a;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public b(I)V
    .locals 3

    .line 22
    iget v0, p0, Lc/e/a/c/g/b;->g:I

    if-eq v0, p1, :cond_2

    .line 23
    iput p1, p0, Lc/e/a/c/g/b;->g:I

    .line 24
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    const v1, 0x3727c5ac    # 1.0E-5f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    .line 26
    invoke-virtual {p0}, Lc/e/a/c/g/b;->k()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    int-to-float v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 27
    invoke-virtual {p0}, Lc/e/a/c/g/b;->l()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 28
    :cond_0
    iget-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 29
    iget-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 30
    iget-object v0, p0, Lc/e/a/c/g/b;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    .line 31
    :cond_1
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/e/a/c/g/b;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lc/e/a/c/g/b;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2

    int-to-float p1, p1

    add-float/2addr p1, v1

    .line 32
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 33
    iget-object v0, p0, Lc/e/a/c/g/b;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    iget-object p1, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 17
    iput-object p1, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    .line 18
    iget-object v0, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 19
    invoke-virtual {v2}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 20
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Lc/e/a/c/g/b;->m()V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 11
    iget v0, p0, Lc/e/a/c/g/b;->g:I

    return v0
.end method

.method public c(I)V
    .locals 1

    .line 7
    iget v0, p0, Lc/e/a/c/g/b;->h:I

    if-eq v0, p1, :cond_0

    .line 8
    iput p1, p0, Lc/e/a/c/g/b;->h:I

    .line 9
    iget-object v0, p0, Lc/e/a/c/g/b;->m:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    invoke-virtual {p0}, Lc/e/a/c/g/b;->m()V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    .line 3
    sget-boolean p1, Lc/e/a/c/g/b;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/e/a/c/g/b;->n()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/e/a/c/g/b;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/g/b;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/g/b;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/g/b;->h:I

    return v0
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public h()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/g/b;->w:Z

    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/c/g/b;->w:Z

    .line 2
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final k()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()V
    .locals 2

    .line 1
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/g/b;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lc/e/a/c/g/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean v0, Lc/e/a/c/g/b;->a:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/c/g/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/c/g/b;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/g/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lc/e/a/c/g/b;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
