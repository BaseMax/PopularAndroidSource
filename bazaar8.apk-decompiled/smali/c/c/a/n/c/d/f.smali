.class public abstract Lc/c/a/n/c/d/f;
.super Lc/c/a/n/c/a/b;
.source "BaseRecyclerDaggerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Params:",
        "Ljava/lang/Object;",
        "VM:",
        "Lc/c/a/n/c/d/g<",
        "TT;TParams;>;>",
        "Lc/c/a/n/c/a/b;"
    }
.end annotation


# instance fields
.field public ia:I

.field public ja:I

.field public ka:Z

.field public final la:I

.field public ma:Z

.field public na:Z

.field public oa:Z

.field public pa:Lc/c/a/n/c/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/d/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public qa:Landroidx/recyclerview/widget/RecyclerView;

.field public ra:Landroid/view/View;

.field public sa:Landroid/view/ViewGroup;

.field public ta:Lc/c/a/n/c/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field

.field public ua:Landroidx/recyclerview/widget/RecyclerView$i;

.field public va:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    const v0, 0x7f0d0062

    .line 2
    iput v0, p0, Lc/c/a/n/c/d/f;->ia:I

    const v0, 0x7f0d012c

    .line 3
    iput v0, p0, Lc/c/a/n/c/d/f;->ja:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/c/a/n/c/d/f;->ka:Z

    const/16 v1, 0xa

    .line 5
    iput v1, p0, Lc/c/a/n/c/d/f;->la:I

    .line 6
    iput-boolean v0, p0, Lc/c/a/n/c/d/f;->na:Z

    .line 7
    iput-boolean v0, p0, Lc/c/a/n/c/d/f;->oa:Z

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/f;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->kb()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/f;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/c/d/f;->va:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Pa()Lh/f/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/base/recycler/BaseRecyclerDaggerFragment$retryLoadData$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/base/recycler/BaseRecyclerDaggerFragment$retryLoadData$1;-><init>(Lc/c/a/n/c/d/f;)V

    return-object v0
.end method

.method public abstract Ua()Lc/c/a/n/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/d/a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final Va()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->ta:Lc/c/a/n/c/d/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Wa()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/f;->ja:I

    return v0
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/o/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lc/c/a/o/a/a;-><init>(II)V

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/f;->ia:I

    return v0
.end method

.method public abstract Za()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParams;"
        }
    .end annotation
.end method

.method public final _a()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;)I
    .locals 3

    .line 36
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H()I

    move-result v1

    goto :goto_1

    .line 37
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 38
    new-array v0, v1, [I

    .line 39
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a([I)[I

    .line 40
    array-length p1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v2

    if-eqz p1, :cond_2

    aget v1, v0, v1

    :cond_2
    :goto_1
    return v1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Ya()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p3, "view"

    .line 5
    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/d/f/o;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->jb()Lc/c/a/n/c/d/g;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/base/recycler/BaseRecyclerDaggerFragment$onViewCreated$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/base/recycler/BaseRecyclerDaggerFragment$onViewCreated$1$1;-><init>(Lc/c/a/n/c/d/f;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 10
    iput-object p1, p0, Lc/c/a/n/c/d/f;->ta:Lc/c/a/n/c/d/g;

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lc/c/a/n/c/d/f;->n(Landroid/os/Bundle;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lc/c/a/n/c/d/f;->ta:Lc/c/a/n/c/d/g;

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Za()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/c/d/g;->b(Ljava/lang/Object;)V

    .line 13
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lc/c/a/n/c/d/f;->ua:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 14
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Ua()Lc/c/a/n/c/d/a;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lc/c/a/n/c/d/f;->pa:Lc/c/a/n/c/d/m;

    invoke-virtual {p1, v0}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/m;)V

    .line 16
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->ib()Lc/c/a/n/c/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/b/a;)V

    .line 17
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 19
    iget-object v3, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 20
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->ab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 22
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$f;->a(J)V

    .line 23
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    instance-of v3, v1, Lb/y/a/P;

    if-nez v3, :cond_3

    move-object v1, p2

    :cond_3
    check-cast v1, Lb/y/a/P;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lb/y/a/P;->a(Z)V

    .line 24
    :cond_4
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->bb()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f010021

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p2

    .line 26
    :cond_5
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 27
    iget-object p2, p0, Lc/c/a/n/c/d/f;->ua:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 28
    new-instance p2, Lc/c/a/n/c/d/e;

    invoke-direct {p2, p0, p1}, Lc/c/a/n/c/d/e;-><init>(Lc/c/a/n/c/d/f;Lc/c/a/n/c/d/a;)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 29
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-lez p1, :cond_6

    .line 30
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(I)V

    goto :goto_0

    .line 31
    :cond_6
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Xa()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 32
    :cond_7
    invoke-virtual {p0, v2}, Lc/c/a/n/c/d/f;->k(Z)V

    return-void

    .line 33
    :cond_8
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_9
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_a
    const-string p1, "viewModel"

    .line 35
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0154

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/c/a/n/c/d/f;->sa:Landroid/view/ViewGroup;

    .line 71
    iget-object p1, p0, Lc/c/a/n/c/d/f;->sa:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Wa()I

    move-result v1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
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

    .line 3
    iput-object p1, p0, Lc/c/a/n/c/d/f;->pa:Lc/c/a/n/c/d/m;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 41
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 43
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/RecyclerState$SuccessLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$SuccessLoadMore;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 44
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 45
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    .line 46
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 47
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/core/model/RecyclerState$ErrorLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$ErrorLoadMore;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 48
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->b(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    .line 49
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    :cond_3
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->db()V

    goto :goto_0

    .line 51
    :cond_4
    sget-object p1, Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->ob()V

    goto :goto_0

    .line 52
    :cond_5
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$UnKnown;->a:Lcom/farsitel/bazaar/core/model/ResourceState$UnKnown;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 53
    iget-object p1, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const-string v1, "recyclerView"

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>"

    if-eqz p1, :cond_9

    check-cast p1, Lc/c/a/n/c/d/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    .line 54
    iget-object p1, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lc/c/a/n/c/d/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->d()V

    .line 55
    iget-object p1, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->k(I)V

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->fb()V

    .line 67
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->gb()V

    .line 68
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->eb()V

    .line 69
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Va()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lc/c/a/d/f/o;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v2, v0, Lc/c/a/n/c/d/a;

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Lc/c/a/n/c/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    return-void

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_2
    const-string p1, "recyclerView"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "slug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 78
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->fb()V

    .line 59
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Oa()V

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->pb()V

    .line 62
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->eb()V

    .line 63
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->c(Ljava/util/List;)V

    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->gb()V

    .line 65
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->mb()V

    :goto_1
    return-void
.end method

.method public ab()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/c/d/f;->oa:Z

    return v0
.end method

.method public final b(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/c/a/n/c/d/f;->ma:Z

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->c(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/c/a/n/c/d/f;->ma:Z

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->d(Ljava/util/List;)V

    return-void
.end method

.method public bb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/c/d/f;->ka:Z

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/view/View;)V

    const v0, 0x7f0a02af

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0207

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/c/d/f;->ra:Landroid/view/View;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "RecyclerView must not be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    sget-object v1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;->Error:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    invoke-direct {v0, v1, p1}, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;-><init>(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lc/c/a/n/c/d/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "recyclerView"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final cb()Lc/c/a/n/c/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->ta:Lc/c/a/n/c/d/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lc/c/a/n/c/d/a;

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "recyclerView"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final db()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Oa()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->eb()V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->gb()V

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->nb()V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/c/d/f;->va:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/d/f;->va:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/c/d/f;->va:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/c/d/f;->va:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->o(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final eb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->sa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final fb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->ra:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final gb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/c/d/f;->na:Z

    return v0
.end method

.method public final ib()Lc/c/a/n/c/d/b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/c/d/b;

    invoke-direct {v0, p0}, Lc/c/a/n/c/d/b;-><init>(Lc/c/a/n/c/d/f;)V

    return-object v0
.end method

.method public abstract jb()Lc/c/a/n/c/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/n/c/d/f;->ka:Z

    return-void
.end method

.method public final kb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->ua:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Landroidx/recyclerview/widget/RecyclerView$i;)I

    move-result v0

    .line 2
    iget-object v2, p0, Lc/c/a/n/c/d/f;->ua:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->e()I

    move-result v2

    .line 3
    iget-object v3, p0, Lc/c/a/n/c/d/f;->ua:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->j()I

    move-result v3

    sub-int v0, v3, v0

    .line 4
    iget v4, p0, Lc/c/a/n/c/d/f;->la:I

    if-le v0, v4, :cond_0

    if-nez v0, :cond_2

    if-le v3, v2, :cond_2

    :cond_0
    iget-boolean v0, p0, Lc/c/a/n/c/d/f;->ma:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->hb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/d/f;->ta:Lc/c/a/n/c/d/g;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->Za()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 7
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 8
    :cond_5
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public final lb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->l(I)V

    goto :goto_0

    :cond_1
    const-string v0, "recyclerView"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public mb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->sa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->n(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "savedFirstVisiblePosition"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "savedOffsetFirstVisiblePosition"

    .line 3
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    iget-object v2, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    const-string v4, "recyclerView"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    .line 5
    instance-of v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_1

    iget-object v2, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    new-instance v3, Lc/c/a/n/c/d/c;

    invoke-direct {v3, p0, v1, p1}, Lc/c/a/n/c/d/c;-><init>(Lc/c/a/n/c/d/f;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_1
    instance-of v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    new-instance v3, Lc/c/a/n/c/d/d;

    invoke-direct {v3, p0, v1, p1}, Lc/c/a/n/c/d/d;-><init>(Lc/c/a/n/c/d/f;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->k(Z)V

    return-void

    .line 8
    :cond_4
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
.end method

.method public final nb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->ra:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v3, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "recyclerView.layoutManager!!"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/c/a/n/c/d/f;->a(Landroidx/recyclerview/widget/RecyclerView$i;)I

    move-result v1

    const-string v2, "savedFirstVisiblePosition"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const-string v1, "savedOffsetFirstVisiblePosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final ob()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/c/a/n/c/d/f;->ma:Z

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    sget-object v1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;->Loading:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;-><init>(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;)V

    return-void
.end method

.method public final pb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public qa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/d/f;->qa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->c()V

    .line 3
    iput-object v2, p0, Lc/c/a/n/c/d/f;->pa:Lc/c/a/n/c/d/m;

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/d/f;->sa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    iput-object v2, p0, Lc/c/a/n/c/d/f;->sa:Landroid/view/ViewGroup;

    .line 6
    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->La()V

    return-void

    .line 8
    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_2
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method
