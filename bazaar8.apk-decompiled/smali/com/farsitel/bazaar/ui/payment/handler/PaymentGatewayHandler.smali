.class public final Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;
.super Ljava/lang/Object;
.source "PaymentGatewayHandler.kt"

# interfaces
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;,
        Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;


# instance fields
.field public final b:Li/a/ra;

.field public c:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public d:Lcom/farsitel/bazaar/ui/payment/PaymentType;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Lh/g/c;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;

.field public l:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

.field public final m:Lc/c/a/e/d/m/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "amount"

    const-string v4, "getAmount()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/m/d;)V
    .locals 1

    const-string v0, "paymentRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->m:Lc/c/a/e/d/m/d;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->b:Li/a/ra;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->e:Ljava/lang/String;

    .line 4
    sget-object v0, Lh/g/a;->a:Lh/g/a;

    invoke-virtual {v0}, Lh/g/a;->a()Lh/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->h:Lh/g/c;

    .line 5
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->i:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->j:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->NONE:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->l:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)J
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)Lc/c/a/e/d/m/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->m:Lc/c/a/e/d/m/d;

    return-object p0
.end method

.method public static final synthetic g(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 6
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->b:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->h:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->f()V

    .line 36
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->k:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void

    :cond_0
    const-string p1, "callback"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 2

    .line 29
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->COLLECTED:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->l:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    .line 30
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->d:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    sget-object v1, Lc/c/a/n/s/d/a;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->e()V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->k:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;->a()V

    :goto_0
    return-void

    :cond_2
    const-string p1, "callback"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "paymentType"

    .line 33
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->INITIATED:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->l:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    .line 21
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->j:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;->c()Lc/c/a/e/d/m/b/b/f$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->k:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;->c()Lc/c/a/e/d/m/b/b/f$b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;->a(Lc/c/a/e/d/m/b/b/f;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_1
    const-string p1, "callback"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;->b()Lc/c/a/e/d/m/b/b/f$a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->g()V

    goto :goto_0

    .line 26
    :cond_3
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected gateway received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 27
    sget-object p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->k:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, p1, v2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "callback"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/ui/payment/PaymentType;)V
    .locals 1

    .line 17
    sget-object v0, Lc/c/a/n/s/d/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->h()V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->d()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 28
    new-instance v3, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$collectPayment$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$collectPayment$1;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/farsitel/bazaar/ui/payment/PaymentType;Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;Ljava/lang/String;Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;)V
    .locals 1

    const-string v0, "dealer"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentType"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentGatewayType"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayCode"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentStepsCallback"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->f()V

    .line 8
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->e:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->f:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p4, p5}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(J)V

    .line 12
    iput-object p6, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->d:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    .line 13
    iput-object p7, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->c:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    .line 14
    iput-object p8, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->i:Ljava/lang/String;

    .line 15
    iput-object p9, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->k:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;

    .line 16
    invoke-virtual {p0, p6}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/ui/payment/PaymentType;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->b:Li/a/ra;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Li/a/ua;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->b:Li/a/ra;

    invoke-static {v0, v2, v1, v2}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final c()J
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->h:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()V
    .locals 6

    .line 2
    new-instance v3, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$initiatePayment$1;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final e()V
    .locals 6

    .line 2
    new-instance v3, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$purchaseProduct$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$purchaseProduct$1;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final f()V
    .locals 3

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->e:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->f:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(J)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->c:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    .line 7
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->i:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->j:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->NONE:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->l:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    return-void
.end method

.method public final g()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->l:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    sget-object v1, Lc/c/a/n/s/d/a;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to resume gateway payment when its not initiated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->c:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/c/a/n/s/d/a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->d()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->e()V

    :goto_1
    return-void
.end method
