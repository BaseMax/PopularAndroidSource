.class public abstract Lc/c/a/n/c/d/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "BaseRecyclerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lc/c/a/n/c/d/n<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public c:Lc/c/a/n/c/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/d/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lc/c/a/n/c/b/a;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lc/c/a/n/c/b/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/n/c/d/a;->d:Lc/c/a/n/c/b/a;

    return-void
.end method

.method public final a(Lc/c/a/n/c/d/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/d/a;->c:Lc/c/a/n/c/d/m;

    return-void
.end method

.method public a(Lc/c/a/n/c/d/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p1}, Lc/c/a/n/c/d/n;->D()V

    .line 18
    :cond_0
    invoke-virtual {p1}, Lc/c/a/n/c/d/n;->C()V

    .line 19
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public a(Lc/c/a/n/c/d/n;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-virtual {p0, v0, p2}, Lc/c/a/n/c/d/a;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items[position]"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-virtual {p1, p2}, Lc/c/a/n/c/d/n;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->g()V

    .line 10
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Lh/a/l;->a(Ljava/util/List;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->d(I)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/RecyclerData;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">(TT;I)V"
        }
    .end annotation

    const-string p2, "data"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->d()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->g()V

    .line 13
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 14
    iget-object v1, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(II)V

    return-void
.end method

.method public b(I)I
    .locals 1

    .line 10
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/d/a;->b(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d00c6

    if-eq p2, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/d/a;->c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lc/c/a/n/c/d/a;->c:Lc/c/a/n/c/d/m;

    invoke-virtual {p1, p2}, Lc/c/a/n/c/d/n;->a(Lc/c/a/n/c/d/m;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ViewHolder must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p2, Lc/c/a/n/c/d/b/c;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/c/a/f/La;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/La;

    move-result-object p1

    const-string v0, "ItemLoadMoreBinding.infl\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/c/a/n/c/d/a;->d:Lc/c/a/n/c/b/a;

    .line 8
    invoke-direct {p2, p1, v0}, Lc/c/a/n/c/d/b/c;-><init>(Lc/c/a/f/La;Lc/c/a/n/c/b/a;)V

    .line 9
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(Z)V

    :cond_3
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lc/c/a/n/c/d/a;->c:Lc/c/a/n/c/d/m;

    .line 12
    iput-object v0, p0, Lc/c/a/n/c/d/a;->d:Lc/c/a/n/c/b/a;

    .line 13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public abstract c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic d(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;)V

    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Lh/a/l;->a(Ljava/util/List;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->e(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/d/a;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Lh/a/u;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->f()V

    :cond_0
    return-void
.end method
