.class public final Lc/c/a/n/j/b/b/d;
.super Lc/c/a/n/c/d/n;
.source "CrewsViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/j/b/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Landroidx/recyclerview/widget/RecyclerView$o;

.field public final w:Lc/c/a/f/Ob;

.field public final x:Lc/c/a/n/j/b/b/d$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$o;Lc/c/a/f/Ob;Lc/c/a/n/j/b/b/d$a;)V
    .locals 1

    const-string v0, "sharedPool"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crewsPersonClickListener"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/d;->v:Landroidx/recyclerview/widget/RecyclerView$o;

    iput-object p2, p0, Lc/c/a/n/j/b/b/d;->w:Lc/c/a/f/Ob;

    iput-object p3, p0, Lc/c/a/n/j/b/b/d;->x:Lc/c/a/n/j/b/b/d$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/b/b/d;->w:Lc/c/a/f/Ob;

    iget-object v0, v0, Lc/c/a/f/Ob;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/c/a/n/j/b/b/d;->a(Landroid/content/Context;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 3
    new-instance v1, Lc/c/a/n/j/b/a/b;

    iget-object v2, p0, Lc/c/a/n/j/b/b/d;->x:Lc/c/a/n/j/b/b/d$a;

    invoke-direct {v1, v2}, Lc/c/a/n/j/b/a/b;-><init>(Lc/c/a/n/j/b/b/d$a;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CrewsItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CrewsItem;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/j/b/b/d;->v:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method
