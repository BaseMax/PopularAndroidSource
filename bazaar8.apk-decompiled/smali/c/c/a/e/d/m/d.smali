.class public final Lc/c/a/e/d/m/d;
.super Ljava/lang/Object;
.source "PaymentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/m/d$a;
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/e/d/m/b/b;

.field public final b:Lc/c/a/e/d/m/a/c;

.field public final c:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/b/b;Lc/c/a/e/d/m/a/c;Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "paymentRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentLocalDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p2, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    iput-object p3, p0, Lc/c/a/e/d/m/d;->c:Lc/c/a/e/d/a/a;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Set<",
            "Lc/c/a/e/d/m/a/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/m/a/c;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/transaction/TransactionItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/m/b/b;->a(IILh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/m/b/b;->a(JLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lc/c/a/e/d/m/f;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/d/m/f;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    invoke-static {p1}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/m/a/c;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/farsitel/bazaar/data/entity/Either;Lh/c/b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/b/b/i;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/d;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 24
    instance-of p2, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p2, :cond_5

    .line 25
    iget-object p2, p0, Lc/c/a/e/d/m/d;->c:Lc/c/a/e/d/a/a;

    invoke-virtual {p2}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object p2

    .line 26
    move-object v2, p1

    check-cast v2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/e/d/m/b/b/i;

    invoke-virtual {v2}, Lc/c/a/e/d/m/b/b/i;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 27
    iget-object v4, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 30
    check-cast v7, Lc/c/a/e/d/m/b/b/o;

    .line 31
    invoke-virtual {v7, p2}, Lc/c/a/e/d/m/b/b/o;->a(Ljava/lang/String;)Lc/c/a/e/d/m/f;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_3
    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$updateLocalPurchases$1;->label:I

    .line 33
    invoke-virtual {v4, v5, v0}, Lc/c/a/e/d/m/a/c;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 34
    :goto_2
    iget-object p2, v0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/m/b/b/i;

    invoke-virtual {p1}, Lc/c/a/e/d/m/b/b/i;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lc/c/a/e/d/m/a/c;->b(J)V

    .line 35
    :cond_5
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getCredit$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/m/b/b;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    invoke-virtual {v0, v1}, Lc/c/a/e/d/m/d;->a(Lcom/farsitel/bazaar/data/entity/Either;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc/c/a/e/d/m/b/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/e/d/m/b/b;->a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/m/b/b;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/m/d;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/m/d;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p3, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lc/c/a/e/d/m/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p3, Lcom/farsitel/bazaar/data/entity/Either;

    .line 7
    instance-of v5, p3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v5, :cond_5

    .line 8
    iget-object v5, v2, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$consumePurchase$1;->label:I

    invoke-virtual {v5, p1, p2, v0}, Lc/c/a/e/d/m/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_5
    const/4 v4, 0x0

    .line 9
    :cond_6
    :goto_2
    invoke-static {v4}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;

    invoke-direct {v0, p0, p5}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p5, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v7

    .line 13
    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->label:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$5:Ljava/lang/Object;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$4:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lc/c/a/e/d/m/d;

    invoke-static {p5}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$4:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lc/c/a/e/d/m/d;

    invoke-static {p5}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lh/e;->a(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$4:Ljava/lang/Object;

    iput v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->label:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lc/c/a/e/d/m/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v7, :cond_4

    return-object v7

    :cond_4
    move-object v1, p0

    :goto_1
    move-object v9, p2

    move-object p2, p1

    move-object p1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, v9

    .line 17
    move-object v2, p1

    check-cast v2, Lcom/farsitel/bazaar/data/entity/Either;

    .line 18
    instance-of v3, v2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v3, :cond_5

    .line 19
    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    .line 20
    iget-object v4, v1, Lc/c/a/e/d/m/d;->c:Lc/c/a/e/d/a/a;

    invoke-virtual {v4}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->a(Ljava/lang/String;)Lc/c/a/e/d/m/f;

    move-result-object v4

    iput-object v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$3:Ljava/lang/Object;

    iput-object p5, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$6:Ljava/lang/Object;

    iput-object v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->L$7:Ljava/lang/Object;

    iput v8, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$purchaseProduct$1;->label:I

    invoke-virtual {v1, v4, v0}, Lc/c/a/e/d/m/d;->a(Lc/c/a/e/d/m/f;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v7, :cond_5

    return-object v7

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/Either;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/a;",
            ">;)V"
        }
    .end annotation

    .line 38
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/m/a;

    invoke-virtual {p1}, Lc/c/a/e/d/m/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/m/a/c;->a(J)V

    :cond_0
    return-void
.end method

.method public final b()J
    .locals 2

    .line 11
    iget-object v0, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/m/a/c;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/CreditOption;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/m/b/b;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/m/d;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$redeemGiftCard$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/d/m/b/b;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/entity/Either;

    invoke-virtual {p1, v0}, Lc/c/a/e/d/m/d;->a(Lcom/farsitel/bazaar/data/entity/Either;)V

    return-object p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$3:Ljava/lang/Object;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lc/c/a/e/d/m/d;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/m/d;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p3, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lc/c/a/e/d/m/b/b;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    move-object v7, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v7

    .line 6
    move-object v4, p1

    check-cast v4, Lcom/farsitel/bazaar/data/entity/Either;

    .line 7
    instance-of v5, v4, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v5, :cond_5

    .line 8
    move-object v5, v4

    check-cast v5, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v5}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;

    .line 9
    invoke-virtual {v5}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->j()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 10
    iget-object v6, v2, Lc/c/a/e/d/m/d;->c:Lc/c/a/e/d/a/a;

    invoke-virtual {v6}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->a(Ljava/lang/String;)Lc/c/a/e/d/m/f;

    move-result-object v6

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getBuyProductMethods$1;->label:I

    invoke-virtual {v2, v6, v0}, Lc/c/a/e/d/m/d;->a(Lc/c/a/e/d/m/f;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final c(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/m/a/c;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lc/c/a/e/d/m/d$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$5:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$4:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/d;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v5, p1

    move-object p1, p3

    move-object p3, v1

    goto :goto_2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/m/d;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->label:I

    invoke-virtual {p0, v0}, Lc/c/a/e/d/m/d;->e(Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 6
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_5

    .line 7
    sget-object p3, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "sync purchases failed while getting purchase list for 3rd party apps"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 8
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v6, v2, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    iget-object v7, v2, Lc/c/a/e/d/m/d;->c:Lc/c/a/e/d/a/a;

    invoke-virtual {v7}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v7

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$getPurchasesLists$1;->label:I

    invoke-virtual {v6, v7, p1, p2, v0}, Lc/c/a/e/d/m/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p2, v4

    .line 12
    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/m/a/a;

    .line 14
    invoke-virtual {v0}, Lc/c/a/e/d/m/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v0}, Lc/c/a/e/d/m/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lc/c/a/e/d/m/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_7
    new-instance p1, Lc/c/a/e/d/m/d$a;

    invoke-direct {p1, p3, p2, v5}, Lc/c/a/e/d/m/d$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public final d(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/m/a/c;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;-><init>(Lc/c/a/e/d/m/d;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$1:Ljava/lang/Object;

    iget-wide v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->J$0:J

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->J$0:J

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/m/d;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/e/d/m/d;->b:Lc/c/a/e/d/m/a/c;

    invoke-virtual {p1}, Lc/c/a/e/d/m/a/c;->f()J

    move-result-wide v5

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/m/d;->a:Lc/c/a/e/d/m/b/b;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$0:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->J$0:J

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    invoke-virtual {p1, v5, v6, v0}, Lc/c/a/e/d/m/b/b;->b(JLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-wide v4, v5

    .line 6
    :goto_1
    move-object v6, p1

    check-cast v6, Lcom/farsitel/bazaar/data/entity/Either;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->J$0:J

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    invoke-virtual {v2, v6, v0}, Lc/c/a/e/d/m/d;->a(Lcom/farsitel/bazaar/data/entity/Either;Lh/c/b;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 8
    instance-of p1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-static {p1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
