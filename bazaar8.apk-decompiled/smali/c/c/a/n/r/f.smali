.class public abstract Lc/c/a/n/r/f;
.super Lc/c/a/n/c/d/f;
.source "ChildMyBazaarFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/util/ArrayList<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;",
        "Lc/c/a/n/r/g;",
        ">;"
    }
.end annotation


# instance fields
.field public wa:I

.field public xa:Z

.field public ya:Z

.field public final za:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const v0, 0x7f0d0063

    .line 2
    iput v0, p0, Lc/c/a/n/r/f;->wa:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/c/a/n/r/f;->za:Z

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/r/f;)Lc/c/a/n/r/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/r/g;

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/n/r/f;IIILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/r/f;->b(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getChildData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lc/c/a/n/r/f;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/r/f;->l(Z)V

    return-void
.end method

.method public static synthetic b(Lc/c/a/n/r/f;IIILjava/lang/Object;)V
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/r/f;->c(II)V

    return-void

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/MyBazaarScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/MyBazaarScreen;-><init>()V

    return-object v0
.end method

.method public Ta()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/r/f;->za:Z

    return v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/r/f;->Ua()Lc/c/a/n/r/i;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/r/i;
    .locals 1

    .line 2
    new-instance v0, Lc/c/a/n/r/i;

    invoke-direct {v0}, Lc/c/a/n/r/i;-><init>()V

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/r/f;->wa:I

    return v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/r/f;->Za()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public Za()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v0, v0, v1, v2}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;IIILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/n/r/e;

    invoke-direct {v0, p0}, Lc/c/a/n/r/e;-><init>(Lc/c/a/n/r/f;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v0, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected item click in my bazaar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    instance-of v0, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    check-cast p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItem;->f()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lb/w/j;->b(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_2
    instance-of v0, p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->b()I

    move-result v0

    const v1, 0x7f0a023a

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Lc/c/a/n/r/f;->a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;)V
    .locals 6

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->d()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lc/c/a/n/r/f;->l(Z)V

    .line 14
    new-instance v0, Lc/c/a/n/r/a/c;

    new-instance v1, Lc/c/a/n/r/d;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/r/d;-><init>(Lc/c/a/n/r/f;Z)V

    invoke-direct {v0, v1}, Lc/c/a/n/r/a/c;-><init>(Lc/c/a/d/f/r;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const-string v1, "childFragmentManager"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public abstract b(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation
.end method

.method public bb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/r/f;->ya:Z

    return v0
.end method

.method public c(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/r/f;->b(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lc/c/a/n/c/d/a;

    .line 3
    invoke-virtual {p2, p1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<com.farsitel.bazaar.common.model.RecyclerData>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/r/f;->xa:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/r/f;->jb()Lc/c/a/n/r/g;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/r/g;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/r/g;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/r/g;

    return-object v0
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/n/r/f;->ya:Z

    return-void
.end method

.method public final l(Z)V
    .locals 5

    .line 1
    invoke-static {p0}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;)Lc/c/a/n/r/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    .line 5
    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->b()I

    move-result v3

    const v4, 0x7f0a023a

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    move-object v1, v2

    .line 6
    :cond_4
    check-cast v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;

    .line 7
    :cond_5
    check-cast v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->a(Z)V

    .line 9
    :cond_6
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->d()V

    :cond_7
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->La()V

    return-void
.end method
