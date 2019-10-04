.class public final Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;
.source "OtherScreens.kt"


# instance fields
.field public final amount:J

.field public final dealerId:Ljava/lang/String;

.field public final gatewayCode:Ljava/lang/String;

.field public final navigateToPaymentOptionsAfter:Z

.field public final paymentType:Ljava/lang/String;

.field public final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    const-string v0, "dealerId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayCode"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gateway_payment"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->dealerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->paymentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->gatewayCode:Ljava/lang/String;

    iput-wide p5, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->amount:J

    iput-boolean p7, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->navigateToPaymentOptionsAfter:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->dealerId:Ljava/lang/String;

    const-string v2, "dealer_id"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->sku:Ljava/lang/String;

    const-string v2, "sku"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->paymentType:Ljava/lang/String;

    const-string v2, "payment_type"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    iget-wide v1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "amount"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->gatewayCode:Ljava/lang/String;

    const-string v2, "gateway_code"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 7
    iget-boolean v1, p0, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;->navigateToPaymentOptionsAfter:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "navigate_to_payment_options_after"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
