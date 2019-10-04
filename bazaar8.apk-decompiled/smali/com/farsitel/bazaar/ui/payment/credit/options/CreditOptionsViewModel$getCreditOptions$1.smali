.class public final Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CreditOptionsViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/s/a/a/g;->b(J)V
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
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getCreditOptions$1"
    f = "CreditOptionsViewModel.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $minimumNeededCredit:J

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/s/a/a/g;


# direct methods
.method public constructor <init>(Lc/c/a/n/s/a/a/g;JLh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->this$0:Lc/c/a/n/s/a/a/g;

    iput-wide p2, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->$minimumNeededCredit:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 4
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

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->this$0:Lc/c/a/n/s/a/a/g;

    iget-wide v2, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->$minimumNeededCredit:J

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;-><init>(Lc/c/a/n/s/a/a/g;JLh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->p$:Li/a/H;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1$1;

    invoke-direct {p1, p0, v2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;Lh/c/b;)V

    iput v3, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->label:I

    invoke-static {p1, p0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->this$0:Lc/c/a/n/s/a/a/g;

    invoke-static {v0}, Lc/c/a/n/s/a/a/g;->b(Lc/c/a/n/s/a/a/g;)Lc/c/a/c/h/g;

    move-result-object v0

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/PaymentState$CreditOptionReceived;->a:Lcom/farsitel/bazaar/core/model/PaymentState$CreditOptionReceived;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->this$0:Lc/c/a/n/s/a/a/g;

    iget-wide v3, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->$minimumNeededCredit:J

    invoke-static {v1, v3, v4, p1}, Lc/c/a/n/s/a/a/g;->a(Lc/c/a/n/s/a/a/g;JLjava/util/List;)Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsViewModel$getCreditOptions$1;->this$0:Lc/c/a/n/s/a/a/g;

    invoke-static {v0}, Lc/c/a/n/s/a/a/g;->b(Lc/c/a/n/s/a/a/g;)Lc/c/a/c/h/g;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-direct {v1, v3, v2, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 10
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
