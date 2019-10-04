.class public final Lc/c/a/e/d/m/b/b;
.super Ljava/lang/Object;
.source "PaymentRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/m/b/d;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/b/d;)V
    .locals 1

    const-string v0, "paymentService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    return-void
.end method


# virtual methods
.method public final a(IILh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 20
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/i;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/m/b/a/i;-><init>(II)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/i;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getTransactions$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getTransactions$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/c;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/m/b/a/c;-><init>(J)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/c;)Ll/b;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getBuyCreditMethods$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getBuyCreditMethods$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 16
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/f;

    invoke-direct {v1}, Lc/c/a/e/d/m/b/a/f;-><init>()V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/f;)Ll/b;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getCredit$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getCredit$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 8
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

    .line 18
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v7, Lc/c/a/e/d/m/b/a/h;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc/c/a/e/d/m/b/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v7}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/h;)Ll/b;

    move-result-object p1

    .line 19
    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getSkuDetails$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getSkuDetails$2;

    invoke-static {p1, p2, p6}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/j;

    invoke-direct {v1, p1, p2, p3}, Lc/c/a/e/d/m/b/a/j;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/j;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$initiatePayment$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$initiatePayment$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;-><init>(Lc/c/a/e/d/m/b/b;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/m/b/b;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v2, Lc/c/a/e/d/m/b/a/a;

    invoke-direct {v2, p1}, Lc/c/a/e/d/m/b/a/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/a;)Ll/b;

    move-result-object p2

    sget-object v2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$result$1;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$result$1;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$collectPayment$1;->label:I

    invoke-static {p2, v2, v0}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    .line 9
    instance-of p1, p2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p1, :cond_5

    .line 10
    invoke-static {}, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->values()[Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    move-result-object p1

    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/m/b/b/d;

    invoke-virtual {p2}, Lc/c/a/e/d/m/b/b/d;->a()I

    move-result p2

    aget-object p1, p1, p2

    sget-object p2, Lc/c/a/e/d/m/b/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v3, :cond_4

    .line 11
    new-instance p2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    sget-object p1, Lcom/farsitel/bazaar/data/entity/GatewayPaymentFailed;->INSTANCE:Lcom/farsitel/bazaar/data/entity/GatewayPaymentFailed;

    invoke-direct {p2, p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_2

    .line 12
    :cond_4
    new-instance p2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    sget-object p1, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    invoke-direct {p2, p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_5
    instance-of p1, p2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p1, :cond_6

    :goto_2
    return-object p2

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/b/b/e;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/b;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/m/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/b;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$consumePurchase$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$consumePurchase$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
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

    .line 14
    new-instance v0, Lc/c/a/e/d/m/b/a/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/c/a/e/d/m/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    invoke-interface {p1, v0}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/k;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$purchaseProduct$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$purchaseProduct$2;

    invoke-static {p1, p2, p5}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(JLh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/b/b/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/g;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/m/b/a/g;-><init>(J)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/g;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getPurchases$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getPurchases$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/e;

    invoke-direct {v1}, Lc/c/a/e/d/m/b/a/e;-><init>()V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/e;)Ll/b;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getCreditOptions$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getCreditOptions$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 6
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/l;

    invoke-direct {v1, p1}, Lc/c/a/e/d/m/b/a/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/l;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$redeemGiftCard$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$redeemGiftCard$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/m/b/b;->a:Lc/c/a/e/d/m/b/d;

    new-instance v1, Lc/c/a/e/d/m/b/a/d;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/m/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/m/b/d;->a(Lc/c/a/e/d/m/b/a/d;)Ll/b;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getBuyProductMethods$2;->a:Lcom/farsitel/bazaar/data/feature/payment/remote/PaymentRemoteDataSource$getBuyProductMethods$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
