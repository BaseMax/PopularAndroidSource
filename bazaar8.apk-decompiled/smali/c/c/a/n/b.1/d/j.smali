.class public final Lc/c/a/n/b/d/j;
.super Lc/c/a/n/b/v;
.source "ScreenshotViewHolder.kt"


# instance fields
.field public v:Lc/c/a/n/b/d/a/a;

.field public w:Lc/c/a/n/b/d/a/a$a;

.field public x:Lc/c/a/n/b/d/a/e$a;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/b/v;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/c/a/n/b/d/j;->v:Lc/c/a/n/b/d/a/a;

    return-void
.end method

.method public final a(Lc/c/a/n/b/d/a/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/n/b/d/j;->w:Lc/c/a/n/b/d/a/a$a;

    return-void
.end method

.method public final a(Lc/c/a/n/b/d/a/e$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/n/b/d/j;->x:Lc/c/a/n/b/d/a/e$a;

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/b/d/a/a;

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/n;->B()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.root.context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lc/c/a/n/b/d/j;->x:Lc/c/a/n/b/d/a/e$a;

    .line 4
    iget-object v3, p0, Lc/c/a/n/b/d/j;->w:Lc/c/a/n/b/d/a/a$a;

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lc/c/a/n/b/d/a/a;-><init>(Landroid/content/Context;Lc/c/a/n/b/d/a/e$a;Lc/c/a/n/b/d/a/a$a;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/ScreenshotSectionItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/ScreenshotSectionItem;->getEntityListURL()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lc/c/a/n/b/d/j;->v:Lc/c/a/n/b/d/a/a;

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lc/c/a/e;->screenshotRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 9
    iget-object v0, p0, Lc/c/a/n/b/d/j;->v:Lc/c/a/n/b/d/a/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method
