.class public final Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;
.super Lcom/farsitel/bazaar/data/feature/payment/PaymentData;
.source "PaymentEntities.kt"


# instance fields
.field public final paymentData:Ljava/lang/String;

.field public final sign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "paymentData"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/feature/payment/PaymentData;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/c/a/e/d/m/f;
    .locals 14

    const-string v0, "userId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/c/a/e/d/m/c;->a:Lc/c/a/e/d/m/c$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/c/a/e/d/m/c$a;->a(Ljava/lang/String;)Lc/c/a/e/d/m/c;

    move-result-object v0

    .line 3
    new-instance v13, Lc/c/a/e/d/m/f;

    .line 4
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->e()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->c()J

    move-result-wide v5

    .line 7
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->a()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->b()Ljava/lang/String;

    move-result-object v8

    .line 9
    iget-object v10, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    .line 10
    iget-object v11, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    const-string v9, ""

    const/4 v12, 0x0

    move-object v1, v13

    move-object v3, p1

    .line 11
    invoke-direct/range {v1 .. v12}, Lc/c/a/e/d/m/f;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchasedItemData(paymentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->paymentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
