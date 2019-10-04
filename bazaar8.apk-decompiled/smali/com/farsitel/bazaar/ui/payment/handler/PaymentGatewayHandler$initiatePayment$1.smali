.class public final Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentGatewayHandler.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->d()V
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
    c = "com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$initiatePayment$1"
    f = "PaymentGatewayHandler.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->this$0:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 2
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

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->this$0:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->p$:Li/a/H;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;Lh/c/b;)V

    iput v2, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->label:I

    invoke-static {p1, p0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;->this$0:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    .line 6
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;

    .line 7
    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

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
