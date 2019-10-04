.class public final Lc/e/a/c/v/c;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/textfield/TextInputLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:I

.field public e:Landroid/widget/FrameLayout;

.field public f:I

.field public g:Landroid/animation/Animator;

.field public final h:F

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Z

.field public m:Landroid/widget/TextView;

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:Z

.field public q:Landroid/widget/TextView;

.field public r:I

.field public s:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    iget-object p1, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lc/e/a/c/d;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lc/e/a/c/v/c;->h:F

    return-void
.end method

.method public static synthetic a(Lc/e/a/c/v/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/c/v/c;->i:I

    return p1
.end method

.method public static synthetic a(Lc/e/a/c/v/c;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/c/v/c;->g:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/c/v/c;)Landroid/widget/TextView;
    .locals 0

    .line 3
    iget-object p0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 42
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lc/e/a/c/v/c;->h:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 43
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xd9

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    sget-object v0, Lc/e/a/c/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 39
    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa7

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    sget-object p2, Lc/e/a/c/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final a(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object p1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    return-object p1

    .line 47
    :cond_1
    iget-object p1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lc/e/a/c/v/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lb/i/k/z;->q(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lb/i/k/z;->p(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v1, v3, v2, v3}, Lb/i/k/z;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p0, p2}, Lc/e/a/c/v/c;->a(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Lc/e/a/c/v/c;->a(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_2
    iput p2, p0, Lc/e/a/c/v/c;->i:I

    return-void
.end method

.method public final a(IIZ)V
    .locals 9

    if-eqz p3, :cond_0

    .line 15
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    iput-object v7, p0, Lc/e/a/c/v/c;->g:Landroid/animation/Animator;

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-boolean v2, p0, Lc/e/a/c/v/c;->p:Z

    iget-object v3, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v8

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lc/e/a/c/v/c;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 19
    iget-boolean v2, p0, Lc/e/a/c/v/c;->l:Z

    iget-object v3, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lc/e/a/c/v/c;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 20
    invoke-static {v7, v8}, Lc/e/a/c/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 21
    invoke-virtual {p0, p1}, Lc/e/a/c/v/c;->a(I)Landroid/widget/TextView;

    move-result-object v3

    .line 22
    invoke-virtual {p0, p2}, Lc/e/a/c/v/c;->a(I)Landroid/widget/TextView;

    move-result-object v5

    .line 23
    new-instance v6, Lc/e/a/c/v/b;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lc/e/a/c/v/b;-><init>(Lc/e/a/c/v/c;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/e/a/c/v/c;->a(II)V

    .line 26
    :goto_0
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 27
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)V

    .line 28
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lc/e/a/c/v/c;->s:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 89
    iput-object p1, p0, Lc/e/a/c/v/c;->s:Landroid/graphics/Typeface;

    .line 90
    iget-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 91
    iget-object v0, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/TextView;I)V
    .locals 6

    .line 53
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    .line 58
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Lb/q/b/a;

    iget-object v2, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lb/q/b/a;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 61
    iget-object v3, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lc/e/a/c/v/c;->a()V

    .line 64
    :cond_0
    invoke-virtual {p0, p2}, Lc/e/a/c/v/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object p2, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 66
    iget-object p2, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 67
    iget p1, p0, Lc/e/a/c/v/c;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/c/v/c;->f:I

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 69
    :goto_0
    iget-object p1, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget p1, p0, Lc/e/a/c/v/c;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/c/v/c;->d:I

    return-void
.end method

.method public final a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lc/e/a/c/v/c;->c()V

    .line 5
    iput-object p1, p0, Lc/e/a/c/v/c;->k:Ljava/lang/CharSequence;

    .line 6
    iget-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v0, p0, Lc/e/a/c/v/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 8
    iput v1, p0, Lc/e/a/c/v/c;->j:I

    .line 9
    :cond_0
    iget v0, p0, Lc/e/a/c/v/c;->i:I

    iget v1, p0, Lc/e/a/c/v/c;->j:I

    iget-object v2, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0, v2, p1}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/c/v/c;->a(IIZ)V

    return-void
.end method

.method public final a(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, p3, p2}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    .line 38
    invoke-virtual {p0, p3}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 72
    iget-boolean v0, p0, Lc/e/a/c/v/c;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lc/e/a/c/v/c;->c()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 74
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    sget v2, Lc/e/a/c/f;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 76
    iget-object v1, p0, Lc/e/a/c/v/c;->s:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 77
    iget-object v2, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    :cond_1
    iget v1, p0, Lc/e/a/c/v/c;->n:I

    invoke-virtual {p0, v1}, Lc/e/a/c/v/c;->d(I)V

    .line 79
    iget-object v1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lb/i/k/z;->f(Landroid/view/View;I)V

    .line 81
    iget-object v1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lc/e/a/c/v/c;->j()V

    .line 83
    iget-object v1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lc/e/a/c/v/c;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 86
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 87
    :goto_0
    iput-boolean p1, p0, Lc/e/a/c/v/c;->l:Z

    return-void
.end method

.method public final a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 12
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lb/i/k/z;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lc/e/a/c/v/c;->j:I

    iget v1, p0, Lc/e/a/c/v/c;->i:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/widget/TextView;I)V
    .locals 1

    .line 10
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Lc/e/a/c/v/c;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 12
    iget v0, p0, Lc/e/a/c/v/c;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/e/a/c/v/c;->f:I

    .line 13
    iget v0, p0, Lc/e/a/c/v/c;->f:I

    invoke-virtual {p0, p2, v0}, Lc/e/a/c/v/c;->a(Landroid/view/ViewGroup;I)V

    .line 14
    iget-object p2, p0, Lc/e/a/c/v/c;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 16
    :goto_0
    iget p1, p0, Lc/e/a/c/v/c;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc/e/a/c/v/c;->d:I

    .line 17
    iget-object p1, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    iget p2, p0, Lc/e/a/c/v/c;->d:I

    invoke-virtual {p0, p1, p2}, Lc/e/a/c/v/c;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/c/v/c;->c()V

    .line 2
    iput-object p1, p0, Lc/e/a/c/v/c;->o:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Lc/e/a/c/v/c;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5
    iput v1, p0, Lc/e/a/c/v/c;->j:I

    .line 6
    :cond_0
    iget v0, p0, Lc/e/a/c/v/c;->i:I

    iget v1, p0, Lc/e/a/c/v/c;->j:I

    iget-object v2, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0, v2, p1}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/c/v/c;->a(IIZ)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 18
    iget-boolean v0, p0, Lc/e/a/c/v/c;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lc/e/a/c/v/c;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 20
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lc/e/a/c/v/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    .line 21
    iget-object v1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    sget v2, Lc/e/a/c/f;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 22
    iget-object v1, p0, Lc/e/a/c/v/c;->s:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 23
    iget-object v2, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    :cond_1
    iget-object v1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lb/i/k/z;->f(Landroid/view/View;I)V

    .line 26
    iget v1, p0, Lc/e/a/c/v/c;->r:I

    invoke-virtual {p0, v1}, Lc/e/a/c/v/c;->e(I)V

    .line 27
    iget-object v1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lc/e/a/c/v/c;->k()V

    .line 29
    iget-object v1, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lc/e/a/c/v/c;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 32
    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 33
    :goto_0
    iput-boolean p1, p0, Lc/e/a/c/v/c;->p:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/c/v/c;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/e/a/c/v/c;->k:Ljava/lang/CharSequence;

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/v/c;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 2

    .line 2
    iput p1, p0, Lc/e/a/c/v/c;->n:I

    .line 3
    iget-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lc/e/a/c/v/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/v/c;->j:I

    invoke-virtual {p0, v0}, Lc/e/a/c/v/c;->b(I)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/v/c;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .line 2
    iput p1, p0, Lc/e/a/c/v/c;->r:I

    .line 3
    iget-object v0, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0, p1}, Lb/i/l/j;->e(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/v/c;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public j()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/e/a/c/v/c;->k:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Lc/e/a/c/v/c;->c()V

    .line 3
    iget v1, p0, Lc/e/a/c/v/c;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iget-boolean v1, p0, Lc/e/a/c/v/c;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/e/a/c/v/c;->o:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lc/e/a/c/v/c;->j:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lc/e/a/c/v/c;->j:I

    .line 7
    :cond_1
    :goto_0
    iget v1, p0, Lc/e/a/c/v/c;->i:I

    iget v2, p0, Lc/e/a/c/v/c;->j:I

    iget-object v3, p0, Lc/e/a/c/v/c;->m:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0, v3, v0}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 9
    invoke-virtual {p0, v1, v2, v0}, Lc/e/a/c/v/c;->a(IIZ)V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/c/v/c;->c()V

    .line 2
    iget v0, p0, Lc/e/a/c/v/c;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/a/c/v/c;->j:I

    .line 4
    :cond_0
    iget v0, p0, Lc/e/a/c/v/c;->i:I

    iget v1, p0, Lc/e/a/c/v/c;->j:I

    iget-object v2, p0, Lc/e/a/c/v/c;->q:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v2, v3}, Lc/e/a/c/v/c;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lc/e/a/c/v/c;->a(IIZ)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/v/c;->l:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/v/c;->p:Z

    return v0
.end method
