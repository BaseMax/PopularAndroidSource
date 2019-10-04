.class public final Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;
.super Lc/c/a/n/c/d/f;
.source "MoreArticleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;",
        "Lc/c/a/n/b/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field public wa:I

.field public xa:Lc/c/a/n/b/a/d;

.field public ya:Z

.field public za:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const v0, 0x7f0d0058

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->wa:I

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->za:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/MoreArticleScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/MoreArticleScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/MoreArticleScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/MoreArticleScreen;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/c/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/d/a<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/b/a/a;

    invoke-direct {v0}, Lc/c/a/n/b/a/a;-><init>()V

    return-object v0
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->wa:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->xa:Lc/c/a/n/b/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/b/a/d;->a()Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "moreArticleArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->Za()Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lc/c/a/f/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/i;

    move-result-object p1

    .line 2
    iget-object p3, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->xa:Lc/c/a/n/b/a/d;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lc/c/a/n/b/a/d;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p3

    const/16 v0, 0x35

    invoke-virtual {p1, v0, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p3

    const-string v0, "root"

    invoke-static {p3, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 4
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lc/c/a/d/f/o;->b(Landroid/view/View;)V

    const-string p2, "FragmentMoreArticleBindi\u2026ErrorView(root)\n        }"

    .line 5
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "moreArticleArgs"

    .line 6
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lc/c/a/n/b/a/b;

    invoke-direct {v0, p0}, Lc/c/a/n/b/a/b;-><init>(Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 8
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0393

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lc/c/a/n/b/a/c;

    invoke-direct {p2, p0}, Lc/c/a/n/b/a/c;-><init>(Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;->getUri()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/b/a/d;->a:Lc/c/a/n/b/a/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/b/a/d$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->xa:Lc/c/a/n/b/a/d;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->za:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->za:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->za:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->za:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->ya:Z

    return v0
.end method

.method public jb()Lc/c/a/n/b/a/e;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/b/a/e;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/b/a/e;

    return-object v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->jb()Lc/c/a/n/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/article/MoreArticleFragment;->La()V

    return-void
.end method
