.class public Lb/y/a/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/y/a/m;->b(Landroidx/recyclerview/widget/RecyclerView$w;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$w;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Lb/y/a/m;


# direct methods
.method public constructor <init>(Lb/y/a/m;Landroidx/recyclerview/widget/RecyclerView$w;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/y/a/j;->f:Lb/y/a/m;

    iput-object p2, p0, Lb/y/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iput p3, p0, Lb/y/a/j;->b:I

    iput-object p4, p0, Lb/y/a/j;->c:Landroid/view/View;

    iput p5, p0, Lb/y/a/j;->d:I

    iput-object p6, p0, Lb/y/a/j;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lb/y/a/j;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/y/a/j;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    :cond_0
    iget p1, p0, Lb/y/a/j;->d:I

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lb/y/a/j;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/y/a/j;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lb/y/a/j;->f:Lb/y/a/m;

    iget-object v0, p0, Lb/y/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Lb/y/a/P;->j(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 3
    iget-object p1, p0, Lb/y/a/j;->f:Lb/y/a/m;

    iget-object p1, p1, Lb/y/a/m;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/y/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lb/y/a/j;->f:Lb/y/a/m;

    invoke-virtual {p1}, Lb/y/a/m;->j()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/y/a/j;->f:Lb/y/a/m;

    iget-object v0, p0, Lb/y/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Lb/y/a/P;->k(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
