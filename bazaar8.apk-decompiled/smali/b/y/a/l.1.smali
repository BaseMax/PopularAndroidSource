.class public Lb/y/a/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/y/a/m;->a(Lb/y/a/m$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/y/a/m$a;

.field public final synthetic b:Landroid/view/ViewPropertyAnimator;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lb/y/a/m;


# direct methods
.method public constructor <init>(Lb/y/a/m;Lb/y/a/m$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/y/a/l;->d:Lb/y/a/m;

    iput-object p2, p0, Lb/y/a/l;->a:Lb/y/a/m$a;

    iput-object p3, p0, Lb/y/a/l;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lb/y/a/l;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb/y/a/l;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lb/y/a/l;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lb/y/a/l;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lb/y/a/l;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lb/y/a/l;->d:Lb/y/a/m;

    iget-object v0, p0, Lb/y/a/l;->a:Lb/y/a/m$a;

    iget-object v0, v0, Lb/y/a/m$a;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lb/y/a/P;->a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    .line 6
    iget-object p1, p0, Lb/y/a/l;->d:Lb/y/a/m;

    iget-object p1, p1, Lb/y/a/m;->s:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/y/a/l;->a:Lb/y/a/m$a;

    iget-object v0, v0, Lb/y/a/m$a;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lb/y/a/l;->d:Lb/y/a/m;

    invoke-virtual {p1}, Lb/y/a/m;->j()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb/y/a/l;->d:Lb/y/a/m;

    iget-object v0, p0, Lb/y/a/l;->a:Lb/y/a/m$a;

    iget-object v0, v0, Lb/y/a/m$a;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lb/y/a/P;->b(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    return-void
.end method
