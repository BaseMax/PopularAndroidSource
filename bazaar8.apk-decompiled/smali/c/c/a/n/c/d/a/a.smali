.class public abstract Lc/c/a/n/c/d/a/a;
.super Lc/c/a/n/c/d/f;
.source "BaseDetailToolbarFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/c/d/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Params:",
        "Ljava/lang/Object;",
        "VM:",
        "Lc/c/a/n/c/d/g<",
        "TT;TParams;>;>",
        "Lc/c/a/n/c/d/f<",
        "TT;TParams;TVM;>;"
    }
.end annotation


# static fields
.field public static final wa:Lc/c/a/n/c/d/a/a$a;


# instance fields
.field public Aa:Ljava/util/HashMap;

.field public xa:Lc/c/a/n/c/d/a/f;

.field public ya:Landroid/view/View;

.field public za:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/c/d/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/c/d/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/c/d/a/a;->wa:Lc/c/a/n/c/d/a/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/a/a;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/a/a;->b(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->Aa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/farsitel/bazaar/ui/base/recycler/detail/BaseDetailToolbarFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/farsitel/bazaar/ui/base/recycler/detail/BaseDetailToolbarFragment$onViewCreated$1;-><init>(Lc/c/a/n/c/d/a/a;)V

    invoke-static {p0, p1, p2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    sget-object v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->qb()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lc/c/a/n/c/d/a/a;->ya:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_3

    .line 5
    :cond_3
    iget-object p1, p0, Lc/c/a/n/c/d/a/a;->ya:Landroid/view/View;

    if-eqz p1, :cond_4

    new-instance v0, Lc/c/a/n/c/d/a/b;

    invoke-direct {v0, p0}, Lc/c/a/n/c/d/a/b;-><init>(Lc/c/a/n/c/d/a/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->c(Landroid/view/View;)V

    const v0, 0x7f0a0393

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0089

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a039a

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f0a0399

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/c/d/a/a;->ya:Landroid/view/View;

    .line 6
    iget-object p1, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/n/c/d/a/f;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lc/c/a/n/c/d/a/a;->za:I

    :goto_0
    move v7, p1

    .line 7
    new-instance p1, Lc/c/a/n/c/d/a/f;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    const-string v1, "requireContext()"

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Na()Landroidx/appcompat/widget/Toolbar;

    move-result-object v4

    const-string v1, "appBarLayout"

    .line 10
    invoke-static {v5, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolbarTitleTextView"

    .line 11
    invoke-static {v6, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    .line 12
    invoke-direct/range {v2 .. v7}, Lc/c/a/n/c/d/a/f;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;I)V

    iput-object p1, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    new-instance p1, Lc/c/a/n/c/d/a/c;

    invoke-direct {p1, p0}, Lc/c/a/n/c/d/a/c;-><init>(Lc/c/a/n/c/d/a/a;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->Aa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/d/a/a;->Aa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->Aa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/c/d/a/a;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->n(Landroid/os/Bundle;)V

    const-string v0, "totalScroll"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a/f;->a(I)V

    :cond_0
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->o(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/c/d/a/f;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "totalScroll"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public qa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->ya:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    :cond_0
    iput-object v1, p0, Lc/c/a/n/c/d/a/a;->ya:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/c/d/a/f;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lc/c/a/n/c/d/a/a;->za:I

    .line 4
    iput-object v1, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    .line 5
    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    .line 6
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->La()V

    return-void
.end method

.method public abstract qb()Ljava/lang/String;
.end method

.method public final rb()Lc/c/a/n/c/d/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a/a;->xa:Lc/c/a/n/c/d/a/f;

    return-object v0
.end method
