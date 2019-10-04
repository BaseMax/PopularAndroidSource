.class public final Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;
.super Lc/c/a/n/c/a/c;
.source "MoreDescriptionDetailFragment.kt"


# instance fields
.field public fa:Lc/c/a/n/b/D;

.field public ga:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->ga:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Qa()Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionDetailScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionDetailScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionDetailScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Qa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->Qa()Lcom/farsitel/bazaar/analytics/model/where/AppMoreDescriptionDetailScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lc/c/a/f/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/m;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->fa:Lc/c/a/n/b/D;

    const/4 p3, 0x0

    const-string v0, "moreDescriptionDetailArgs"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc/c/a/n/b/D;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p2

    const/16 v1, 0x35

    invoke-virtual {p1, v1, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const/16 p2, 0x2a

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->fa:Lc/c/a/n/b/D;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/b/D;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentMoreDescriptionD\u2026lArgs.pageDesc)\n        }"

    .line 4
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p3

    .line 6
    :cond_1
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p3
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00b2

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lc/c/a/n/b/C;

    invoke-direct {p2, p0}, Lc/c/a/n/b/C;-><init>(Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/b/D;->a:Lc/c/a/n/b/D$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/b/D$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/D;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->fa:Lc/c/a/n/b/D;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->ga:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->ga:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->ga:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->ga:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/c;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/MoreDescriptionDetailFragment;->La()V

    return-void
.end method
