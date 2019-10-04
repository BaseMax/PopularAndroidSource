.class public abstract Lb/y/a/P;
.super Landroidx/recyclerview/widget/RecyclerView$f;
.source "SimpleItemAnimator.java"


# instance fields
.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/y/a/P;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lb/y/a/P;->c(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    .line 14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/y/a/P;->g:Z

    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 8

    if-eqz p2, :cond_1

    .line 2
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lb/y/a/P;->a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lb/y/a/P;->f(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 7

    .line 5
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 6
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 9
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 10
    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 11
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 12
    invoke-virtual/range {v0 .. v6}, Lb/y/a/P;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$w;Z)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lb/y/a/P;->d(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/y/a/P;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 6

    .line 2
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 3
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    .line 4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    :goto_1
    move v5, p3

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->q()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 10
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-virtual/range {v0 .. v5}, Lb/y/a/P;->a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lb/y/a/P;->g(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$w;Z)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 6

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lb/y/a/P;->j(Landroidx/recyclerview/widget/RecyclerView$w;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lb/y/a/P;->a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$w;Z)V
    .locals 0

    return-void
.end method

.method public abstract f(Landroidx/recyclerview/widget/RecyclerView$w;)Z
.end method

.method public abstract g(Landroidx/recyclerview/widget/RecyclerView$w;)Z
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/y/a/P;->n(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/y/a/P;->o(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/y/a/P;->p(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/y/a/P;->q(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/y/a/P;->r(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/y/a/P;->s(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public n(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method
