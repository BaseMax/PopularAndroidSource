.class public final Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PreloadLinearLayoutManager.kt"


# instance fields
.field public final H:Lb/y/a/D;

.field public I:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 2
    invoke-static {p0, p2}, Lb/y/a/D;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Lb/y/a/D;

    move-result-object p1

    const-string p2, "OrientationHelper.create\u2026Helper(this, orientation)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->H:Lb/y/a/D;

    return-void
.end method


# virtual methods
.method public a(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutPrefetchRegistry"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$i$a;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()I

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->m(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, p1

    if-ne p1, p2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->H:Lb/y/a/D;

    invoke-virtual {p1, v0}, Lb/y/a/D;->a(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->H:Lb/y/a/D;

    invoke-virtual {v0}, Lb/y/a/D;->b()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 7
    iget v2, p0, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->I:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    :goto_2
    if-ge v0, v1, :cond_4

    if-ltz v0, :cond_3

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$t;->a()I

    move-result p2

    if-ge v0, p2, :cond_3

    const/4 p2, 0x0

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p4, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i$a;->a(II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final m(I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final n(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->I:I

    .line 2
    iget p1, p0, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->I:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjacentPrefetchItemCount must not smaller than 1!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
