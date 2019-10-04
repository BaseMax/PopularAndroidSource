.class public final Lc/c/a/n/r/c;
.super Lc/c/a/n/r/f;
.source "AppChildMyBazaarFragment.kt"


# instance fields
.field public Aa:Lc/c/a/n/A/k;

.field public Ba:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/r/f;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/r/c;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/r/c;->qb()I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lc/c/a/n/r/c;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/r/c;->f(I)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/r/c;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/r/c;->rb()I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lc/c/a/n/r/c;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/r/c;->g(I)V

    return-void
.end method

.method public static final synthetic c(Lc/c/a/n/r/c;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/r/c;->Ba:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/r/g;

    invoke-virtual {v0, p1, p2}, Lc/c/a/n/r/g;->a(II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/A/k;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p1, Lc/c/a/n/A/k;

    .line 8
    invoke-virtual {p1}, Lc/c/a/n/A/k;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/r/a;

    invoke-direct {v2, p0}, Lc/c/a/n/r/a;-><init>(Lc/c/a/n/r/c;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 9
    iput-object p1, p0, Lc/c/a/n/r/c;->Aa:Lc/c/a/n/A/k;

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/r/g;

    invoke-virtual {p1}, Lc/c/a/n/r/g;->j()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    new-instance v1, Lc/c/a/n/r/b;

    invoke-direct {v1, p0}, Lc/c/a/n/r/b;-><init>(Lc/c/a/n/r/c;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/r/c;->Ba:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/r/c;->Ba:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/r/c;->Ba:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/r/c;->Ba:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f(I)V
    .locals 7

    .line 1
    invoke-static {p0}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;)Lc/c/a/n/r/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    .line 5
    invoke-virtual {v5}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->b()I

    move-result v5

    const v6, 0x7f0a023b

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 6
    :goto_2
    move-object v0, v4

    check-cast v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 7
    :goto_3
    check-cast v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    if-eqz v0, :cond_8

    if-nez p1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_7

    const v3, 0x7f100143

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 11
    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-virtual {v0, v3}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->a(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final g(I)V
    .locals 7

    .line 1
    invoke-static {p0}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;)Lc/c/a/n/r/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    .line 5
    invoke-virtual {v5}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->b()I

    move-result v5

    const v6, 0x7f0a023e

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 6
    :goto_2
    move-object v0, v4

    check-cast v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 7
    :goto_3
    check-cast v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    if-eqz v0, :cond_8

    if-nez p1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_7

    const v3, 0x7f100143

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 11
    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-virtual {v0, v3}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->a(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/r/f;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/r/c;->La()V

    return-void
.end method

.method public final qb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/c;->Aa:Lc/c/a/n/A/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/A/k;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getMaliciousAppCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "upgradableBadgeViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final rb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/c;->Aa:Lc/c/a/n/A/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/A/k;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getUpgradeableAppCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "upgradableBadgeViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
