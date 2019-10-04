.class public final Lc/c/a/n/s/e/a/h;
.super Lc/c/a/d/f/p;
.source "PaymentOptionsViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentData;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/m/d;

.field public final f:Lc/c/a/p/I;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/d;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "paymentRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/e/a/h;->e:Lc/c/a/e/d/m/d;

    iput-object p2, p0, Lc/c/a/n/s/e/a/h;->f:Lc/c/a/p/I;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/e/a/h;->d:Lc/c/a/c/h/g;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/s/e/a/h;)Lc/c/a/e/d/m/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/s/e/a/h;->e:Lc/c/a/e/d/m/d;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/s/e/a/h;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/s/e/a/h;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/s/e/a/h;Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/s/e/a/h;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lc/c/a/n/s/e/a/h;->d:Lc/c/a/c/h/g;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;)V
    .locals 8

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lc/c/a/n/s/e/a/h;->f:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->i()V

    .line 8
    iget-object v0, p0, Lc/c/a/n/s/e/a/h;->d:Lc/c/a/c/h/g;

    .line 9
    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    .line 10
    sget-object v2, Lcom/farsitel/bazaar/core/model/PaymentState$AlreadyBought;->a:Lcom/farsitel/bazaar/core/model/PaymentState$AlreadyBought;

    .line 11
    new-instance v3, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {v3, v1, p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    .line 13
    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 15
    :cond_2
    iget-object v0, p0, Lc/c/a/n/s/e/a/h;->d:Lc/c/a/c/h/g;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/PaymentState$BuyProductDataReceived;->a:Lcom/farsitel/bazaar/core/model/PaymentState$BuyProductDataReceived;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v2, "dealer"

    invoke-static {p1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sku"

    invoke-static {p2, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lc/c/a/n/s/e/a/h;->d:Lc/c/a/c/h/g;

    new-instance v3, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v7, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v2, v3}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 5
    new-instance v3, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsViewModel$getBuyProductMethods$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsViewModel$getBuyProductMethods$1;-><init>(Lc/c/a/n/s/e/a/h;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/e/a/h;->d:Lc/c/a/c/h/g;

    return-object v0
.end method
