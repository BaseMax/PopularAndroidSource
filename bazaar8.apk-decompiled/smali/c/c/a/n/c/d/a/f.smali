.class public final Lc/c/a/n/c/d/a/f;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "DetailToolbarScrollListener.kt"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public final e:I

.field public final f:I

.field public final g:Landroid/animation/ArgbEvaluator;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Landroid/view/animation/AlphaAnimation;

.field public final n:Landroid/view/animation/AlphaAnimation;

.field public o:Z

.field public p:Z

.field public final q:Landroidx/appcompat/widget/Toolbar;

.field public final r:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarTitleTextView"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput-object p2, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    iput-object p3, p0, Lc/c/a/n/c/d/a/f;->r:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    const-string p2, ""

    .line 3
    iput-object p2, p0, Lc/c/a/n/c/d/a/f;->b:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iput-boolean p2, p0, Lc/c/a/n/c/d/a/f;->c:Z

    .line 5
    iput p5, p0, Lc/c/a/n/c/d/a/f;->d:I

    .line 6
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result p2

    iput p2, p0, Lc/c/a/n/c/d/a/f;->e:I

    .line 7
    iget p2, p0, Lc/c/a/n/c/d/a/f;->e:I

    div-int/lit8 p2, p2, 0x3

    iput p2, p0, Lc/c/a/n/c/d/a/f;->f:I

    .line 8
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lc/c/a/n/c/d/a/f;->g:Landroid/animation/ArgbEvaluator;

    const/4 p2, 0x4

    .line 9
    invoke-static {p2}, Lc/c/a/d/b/i;->a(I)I

    move-result p2

    iput p2, p0, Lc/c/a/n/c/d/a/f;->h:I

    const p2, 0x106000d

    .line 10
    invoke-static {p1, p2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lc/c/a/n/c/d/a/f;->i:I

    const p2, 0x7f060125

    .line 11
    invoke-static {p1, p2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lc/c/a/n/c/d/a/f;->j:I

    .line 12
    invoke-static {p1, p2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lc/c/a/n/c/d/a/f;->k:I

    const p2, 0x7f060047

    .line 13
    invoke-static {p1, p2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lc/c/a/n/c/d/a/f;->l:I

    .line 14
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p4, 0x2bc

    .line 15
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 16
    new-instance p4, Lc/c/a/n/c/d/a/d;

    invoke-direct {p4, p0}, Lc/c/a/n/c/d/a/d;-><init>(Lc/c/a/n/c/d/a/f;)V

    invoke-virtual {p1, p4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17
    iput-object p1, p0, Lc/c/a/n/c/d/a/f;->m:Landroid/view/animation/AlphaAnimation;

    .line 18
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p2, 0x12c

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 20
    new-instance p2, Lc/c/a/n/c/d/a/e;

    invoke-direct {p2, p0}, Lc/c/a/n/c/d/a/e;-><init>(Lc/c/a/n/c/d/a/f;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 21
    iput-object p1, p0, Lc/c/a/n/c/d/a/f;->n:Landroid/view/animation/AlphaAnimation;

    .line 22
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    .line 23
    iget p2, p0, Lc/c/a/n/c/d/a/f;->i:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 24
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    iget p2, p0, Lc/c/a/n/c/d/a/f;->k:I

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/d/a/f;->a(Landroid/view/ViewGroup;I)V

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/a/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 4
    iget v0, p0, Lc/c/a/n/c/d/a/f;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 44
    iput p1, p0, Lc/c/a/n/c/d/a/f;->d:I

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 40
    invoke-static {p1}, Lb/i/k/E;->a(Landroid/view/ViewGroup;)Lh/j/d;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Lh/j/d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2}, Lc/c/a/n/c/d/a/f;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lb/i/l/e;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Landroid/view/animation/AlphaAnimation;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 32
    :cond_0
    iget-boolean v0, p0, Lc/c/a/n/c/d/a/f;->c:Z

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lc/c/a/n/c/d/a/f;->m:Landroid/view/animation/AlphaAnimation;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lc/c/a/n/c/d/a/f;->n:Landroid/view/animation/AlphaAnimation;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lc/c/a/n/c/d/a/f;->c:Z

    goto :goto_1

    .line 36
    :cond_3
    iget-object v0, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Landroidx/appcompat/widget/Toolbar;IF)V
    .locals 0

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/16 p1, 0x15

    .line 38
    invoke-static {p1}, Lc/c/a/c/h/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->r:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 6
    iget p2, p0, Lc/c/a/n/c/d/a/f;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lc/c/a/n/c/d/a/f;->d:I

    .line 7
    iget-object p2, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    if-eqz p2, :cond_7

    .line 8
    iget p3, p0, Lc/c/a/n/c/d/a/f;->d:I

    iget v0, p0, Lc/c/a/n/c/d/a/f;->f:I

    if-le p3, v0, :cond_1

    .line 9
    iget-boolean p1, p0, Lc/c/a/n/c/d/a/f;->o:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lc/c/a/n/c/d/a/f;->o:Z

    .line 11
    iput-boolean p1, p0, Lc/c/a/n/c/d/a/f;->p:Z

    .line 12
    iget p1, p0, Lc/c/a/n/c/d/a/f;->j:I

    iget p3, p0, Lc/c/a/n/c/d/a/f;->h:I

    int-to-float p3, p3

    invoke-virtual {p0, p2, p1, p3}, Lc/c/a/n/c/d/a/f;->a(Landroidx/appcompat/widget/Toolbar;IF)V

    .line 13
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    iget p2, p0, Lc/c/a/n/c/d/a/f;->l:I

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/d/a/f;->a(Landroid/view/ViewGroup;I)V

    .line 14
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->m:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/a/f;->a(Landroid/view/animation/AlphaAnimation;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 17
    iput p2, p0, Lc/c/a/n/c/d/a/f;->d:I

    .line 18
    :cond_2
    iput-boolean p2, p0, Lc/c/a/n/c/d/a/f;->o:Z

    .line 19
    iget p1, p0, Lc/c/a/n/c/d/a/f;->d:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Lc/c/a/n/c/d/a/f;->f:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 20
    iget-object p3, p0, Lc/c/a/n/c/d/a/f;->g:Landroid/animation/ArgbEvaluator;

    iget v0, p0, Lc/c/a/n/c/d/a/f;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lc/c/a/n/c/d/a/f;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    if-eqz p3, :cond_5

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 21
    iget-object v1, p0, Lc/c/a/n/c/d/a/f;->g:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lc/c/a/n/c/d/a/f;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lc/c/a/n/c/d/a/f;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    iget-object v1, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    iget v2, p0, Lc/c/a/n/c/d/a/f;->h:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {p0, v1, p3, v2}, Lc/c/a/n/c/d/a/f;->a(Landroidx/appcompat/widget/Toolbar;IF)V

    .line 23
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->q:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/c/d/a/f;->a(Landroid/view/ViewGroup;I)V

    .line 24
    iget-boolean p1, p0, Lc/c/a/n/c/d/a/f;->p:Z

    if-eqz p1, :cond_3

    .line 25
    iget-object p1, p0, Lc/c/a/n/c/d/a/f;->n:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/a/f;->a(Landroid/view/animation/AlphaAnimation;)V

    .line 26
    iput-boolean p2, p0, Lc/c/a/n/c/d/a/f;->p:Z

    :cond_3
    return-void

    .line 27
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Toolbar is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/n/c/d/a/f;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/a/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
