.class public final Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InAppBillingServiceFunctions.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/k/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Lcom/farsitel/bazaar/data/entity/Either<",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.payment.iab.InAppBillingServiceFunctions$getSkuDetails$1"
    f = "InAppBillingServiceFunctions.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $apiVersion:I

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $skuList:Ljava/util/List;

.field public final synthetic $type:Ljava/lang/String;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/k/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/k/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->this$0:Lc/c/a/k/a/a;

    iput p2, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$apiVersion:I

    iput-object p3, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$skuList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;

    iget-object v2, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->this$0:Lc/c/a/k/a/a;

    iget v3, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$apiVersion:I

    iget-object v4, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$type:Ljava/lang/String;

    iget-object v6, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$skuList:Ljava/util/List;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;-><init>(Lc/c/a/k/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->p$:Li/a/H;

    .line 2
    sget-object p1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->this$0:Lc/c/a/k/a/a;

    invoke-static {v1}, Lc/c/a/k/a/a;->a(Lc/c/a/k/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->l()Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->this$0:Lc/c/a/k/a/a;

    invoke-static {p1}, Lc/c/a/k/a/a;->b(Lc/c/a/k/a/a;)Lc/c/a/e/d/m/d;

    move-result-object v3

    iget v5, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$apiVersion:I

    iget-object v6, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$type:Ljava/lang/String;

    iget-object v8, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->$skuList:Ljava/util/List;

    iput-object v4, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;->label:I

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lc/c/a/e/d/m/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
