.class public final Lcom/farsitel/bazaar/widget/LoadingButton;
.super Landroid/widget/FrameLayout;
.source "LoadingButton.kt"


# instance fields
.field public a:Lcom/google/android/material/button/MaterialButton;

.field public b:Landroid/widget/ProgressBar;

.field public final c:F

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:F

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/LoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/LoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x20

    .line 3
    invoke-static {p1}, Lc/c/a/d/b/i;->a(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->c:F

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x20

    .line 7
    invoke-static {p1}, Lc/c/a/d/b/i;->a(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->c:F

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/LoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/LoadingButton;ILandroid/util/AttributeSet;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p1, 0x7f060050

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/LoadingButton;->a(ILandroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setButtonIcon(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->f:Landroid/graphics/drawable/Drawable;

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const-string p1, "button"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method private final setButtonText(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->d:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string p1, "button"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(ILandroid/util/AttributeSet;I)V
    .locals 4

    .line 14
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f0a020a

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 16
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 19
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    .line 20
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0a020b

    .line 21
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 22
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 24
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 26
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    .line 27
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 28
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 30
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->b:Landroid/widget/ProgressBar;

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->b:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "progressBar"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "button"

    .line 34
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    iget p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->c:F

    float-to-int v4, p1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/farsitel/bazaar/widget/LoadingButton;->a(Lcom/farsitel/bazaar/widget/LoadingButton;ILandroid/util/AttributeSet;IILjava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc/c/a/d/h;->LoadingButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0x7f060050

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x4

    .line 4
    iget v4, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->c:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 5
    invoke-virtual {p0, v2, p1, v3}, Lcom/farsitel/bazaar/widget/LoadingButton;->a(ILandroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 6
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setText(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 7
    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonIconPadding(F)V

    const/4 p1, 0x2

    const v2, 0x7f060117

    .line 10
    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonIconTintRef(I)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    :goto_1
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final getButtonIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getButtonIconPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->g:F

    return v0
.end method

.method public final getButtonIconTintRef()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->h:I

    return v0
.end method

.method public final getShowLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->e:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final setButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-boolean p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->e:Z

    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonIcon(Z)V

    return-void
.end method

.method public final setButtonIconPadding(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->g:F

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconPadding(I)V

    return-void

    :cond_0
    const-string p1, "button"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setButtonIconTintRef(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->h:I

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    return-void

    :cond_0
    const-string p1, "button"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    return-void

    :cond_0
    const-string p1, "progressBar"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "button"

    .line 4
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "button"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setShowLoading(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->e:Z

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->a:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->b:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    if-eqz v0, :cond_1

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 5
    sget-object v0, Lc/c/a/d/a/b;->a:Lc/c/a/d/a/b$a;

    iget-object v3, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->b:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lc/c/a/d/a/b$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonText(Z)V

    .line 7
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonIcon(Z)V

    return-void

    .line 8
    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "button"

    .line 10
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->d:Ljava/lang/String;

    .line 2
    iget-boolean p1, p0, Lcom/farsitel/bazaar/widget/LoadingButton;->e:Z

    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setButtonText(Z)V

    return-void
.end method
