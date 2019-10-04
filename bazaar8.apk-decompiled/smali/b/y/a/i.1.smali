.class public Lb/y/a/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/y/a/m;->t(Landroidx/recyclerview/widget/RecyclerView$w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$w;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Lb/y/a/m;


# direct methods
.method public constructor <init>(Lb/y/a/m;Landroidx/recyclerview/widget/RecyclerView$w;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/y/a/i;->d:Lb/y/a/m;

    iput-object p2, p0, Lb/y/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iput-object p3, p0, Lb/y/a/i;->b:Landroid/view/View;

    iput-object p4, p0, Lb/y/a/i;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/y/a/i;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/y/a/i;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lb/y/a/i;->d:Lb/y/a/m;

    iget-object v0, p0, Lb/y/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Lb/y/a/P;->h(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 3
    iget-object p1, p0, Lb/y/a/i;->d:Lb/y/a/m;

    iget-object p1, p1, Lb/y/a/m;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/y/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lb/y/a/i;->d:Lb/y/a/m;

    invoke-virtual {p1}, Lb/y/a/m;->j()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/y/a/i;->d:Lb/y/a/m;

    iget-object v0, p0, Lb/y/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Lb/y/a/P;->i(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
