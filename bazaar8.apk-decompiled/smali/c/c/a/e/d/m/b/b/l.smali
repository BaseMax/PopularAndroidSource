.class public final Lc/c/a/e/d/m/b/b/l;
.super Ljava/lang/Object;
.source "InitiatePaymentResponseDto.kt"


# instance fields
.field public final invoiceToken:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "invoiceToken"
    .end annotation
.end field

.field public final silentGatewayData:Lc/c/a/e/d/m/b/b/f$a;
    .annotation runtime Lc/e/d/a/c;
        value = "silentGatewayData"
    .end annotation
.end field

.field public final webBasedGatewayData:Lc/c/a/e/d/m/b/b/f$b;
    .annotation runtime Lc/e/d/a/c;
        value = "webBasedGatewayData"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/m/b/b/l;->invoiceToken:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/m/b/b/l;->webBasedGatewayData:Lc/c/a/e/d/m/b/b/f$b;

    .line 4
    iget-object v3, p0, Lc/c/a/e/d/m/b/b/l;->silentGatewayData:Lc/c/a/e/d/m/b/b/f$a;

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/data/feature/payment/InitiatePaymentData;-><init>(Ljava/lang/String;Lc/c/a/e/d/m/b/b/f$b;Lc/c/a/e/d/m/b/b/f$a;)V

    return-object v0
.end method
