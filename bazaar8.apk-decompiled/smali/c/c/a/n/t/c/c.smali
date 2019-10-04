.class public final Lc/c/a/n/t/c/c;
.super Lc/c/a/n/c/d/g;
.source "TransactionsViewModel.kt"


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
.field public final j:Lc/c/a/e/d/m/d;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/d;)V
    .locals 1

    const-string v0, "paymentRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/c/c;->j:Lc/c/a/e/d/m/d;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/c/c;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->h()I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lc/c/a/n/t/c/c;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/t/c/c;)Lc/c/a/e/d/m/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/c/c;->j:Lc/c/a/e/d/m/d;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/t/c/c;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->i()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsViewModel$makeData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/ui/profile/transactions/TransactionsViewModel$makeData$1;-><init>(Lc/c/a/n/t/c/c;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/common/model/transaction/TransactionHeaderItem;

    invoke-direct {v1}, Lcom/farsitel/bazaar/common/model/transaction/TransactionHeaderItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/t/c/c;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method
