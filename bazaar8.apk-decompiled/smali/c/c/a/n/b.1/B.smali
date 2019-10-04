.class public final Lc/c/a/n/b/B;
.super Lc/c/a/n/c/d/a/g;
.source "InstallFloatingButtonScrollListener.kt"


# instance fields
.field public g:Z

.field public final h:I

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_floatingButton"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc/c/a/n/c/d/a/g;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput p3, p0, Lc/c/a/n/b/B;->i:I

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->b()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lc/c/a/n/b/B;->h:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/b/B;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/n/b/B;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lc/c/a/n/c/d/a/g;->a(Z)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lc/c/a/n/c/d/a/g;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 11
    :cond_1
    iget v0, p0, Lc/c/a/n/b/B;->i:I

    invoke-virtual {p0}, Lc/c/a/n/b/B;->f()I

    move-result v2

    if-le v0, v2, :cond_3

    invoke-virtual {p0}, Lc/c/a/n/b/B;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lc/c/a/n/b/B;->g:Z

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->a()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/c/d/a/g;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 14
    invoke-virtual {p0, v1}, Lc/c/a/n/c/d/a/g;->a(Z)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->d()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/n/c/d/a/g;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget p2, p0, Lc/c/a/n/b/B;->i:I

    add-int/2addr p2, p3

    iput p2, p0, Lc/c/a/n/b/B;->i:I

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lc/c/a/n/b/B;->i:I

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/b/B;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/n/b/B;->g:Z

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/b/B;->h:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->c()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->c()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->c()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
