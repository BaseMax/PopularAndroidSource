.class public final Lc/c/a/n/z/i;
.super Lc/c/a/n/c/d/g;
.source "SubscriptionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lc/c/a/e/d/v/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/v/a;)V
    .locals 1

    const-string v0, "subscriptionRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/z/i;->l:Lc/c/a/e/d/v/a;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/z/i;->j:Lb/r/t;

    .line 3
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/z/i;->k:Lc/c/a/c/h/g;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/z/i;)Lc/c/a/e/d/v/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/z/i;->l:Lc/c/a/e/d/v/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/z/i;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/z/i;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/z/i;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/z/i;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/z/i;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/z/i;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 4

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 15
    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-object p1, p0, Lc/c/a/n/z/i;->j:Lb/r/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;)V
    .locals 0

    .line 10
    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->setStatus(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->setCancelableLoading(Z)V

    .line 12
    invoke-virtual {p0, p1}, Lc/c/a/n/z/i;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->setCancelableLoading(Z)V

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/n/z/i;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    .line 9
    iget-object p1, p0, Lc/c/a/n/z/i;->k:Lc/c/a/c/h/g;

    invoke-virtual {p1, p2}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Lcom/farsitel/bazaar/ui/subscription/SubscriptionViewModel$makeData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionViewModel$makeData$1;-><init>(Lc/c/a/n/z/i;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 7

    const-string v0, "subscriptionItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->setCancelableLoading(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/z/i;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    .line 3
    new-instance v4, Lcom/farsitel/bazaar/ui/subscription/SubscriptionViewModel$onCancelSubscriptionClicked$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionViewModel$onCancelSubscriptionClicked$1;-><init>(Lc/c/a/n/z/i;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/z/i;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/z/i;->k:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/z/i;->j:Lb/r/t;

    return-object v0
.end method
