.class public final Lc/c/a/n/s/a/a/g;
.super Lc/c/a/d/f/p;
.source "CreditOptionsViewModel.kt"


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


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/d;)V
    .locals 1

    const-string v0, "paymentRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/a/a/g;->e:Lc/c/a/e/d/m/d;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/a/a/g;->d:Lc/c/a/c/h/g;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/s/a/a/g;)Lc/c/a/e/d/m/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/s/a/a/g;->e:Lc/c/a/e/d/m/d;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/s/a/a/g;JLjava/util/List;)Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/s/a/a/g;->a(JLjava/util/List;)Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/s/a/a/g;)Lc/c/a/c/h/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/s/a/a/g;->d:Lc/c/a/c/h/g;

    return-object p0
.end method


# virtual methods
.method public final a(JLjava/util/List;)Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/CreditOption;",
            ">;)",
            "Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    .line 7
    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->a()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;

    invoke-direct {p1, v0}, Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final a(J)V
    .locals 12

    .line 3
    iget-object v0, p0, Lc/c/a/n/s/a/a/g;->d:Lc/c/a/c/h/g;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v7, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 4
    new-instance v3, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getBuyCreditMethods$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getBuyCreditMethods$1;-><init>(Lc/c/a/n/s/a/a/g;JLh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b(J)V
    .locals 12

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/a/a/g;->d:Lc/c/a/c/h/g;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v7, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 3
    new-instance v3, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;-><init>(Lc/c/a/n/s/a/a/g;JLh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

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
    iget-object v0, p0, Lc/c/a/n/s/a/a/g;->d:Lc/c/a/c/h/g;

    return-object v0
.end method
