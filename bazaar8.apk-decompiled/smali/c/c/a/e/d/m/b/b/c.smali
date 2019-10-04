.class public final Lc/c/a/e/d/m/b/b/c;
.super Ljava/lang/Object;
.source "BuyProductMethodsResponseDto.kt"


# instance fields
.field public final agreementDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "agreementDescription"
    .end annotation
.end field

.field public final credit:J
    .annotation runtime Lc/e/d/a/c;
        value = "credit"
    .end annotation
.end field

.field public final creditString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "creditString"
    .end annotation
.end field

.field public final dealerIconUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "dealerIconUrl"
    .end annotation
.end field

.field public final dealerName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "dealerName"
    .end annotation
.end field

.field public final kind:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "kind"
    .end annotation
.end field

.field public final paymentData:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "paymentData"
    .end annotation
.end field

.field public final paymentMethods:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "methods"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/b/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public final productName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "productName"
    .end annotation
.end field

.field public final sign:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "sign"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;
    .locals 12

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->paymentData:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->sign:Ljava/lang/String;

    .line 3
    iget-wide v3, p0, Lc/c/a/e/d/m/b/b/c;->credit:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lc/c/a/e/d/m/b/b/c;->creditString:Ljava/lang/String;

    .line 5
    iget-object v5, p0, Lc/c/a/e/d/m/b/b/c;->productName:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Lc/c/a/e/d/m/b/b/c;->kind:Ljava/lang/String;

    .line 7
    iget-object v8, p0, Lc/c/a/e/d/m/b/b/c;->dealerIconUrl:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Lc/c/a/e/d/m/b/b/c;->dealerName:Ljava/lang/String;

    .line 9
    iget-object v9, p0, Lc/c/a/e/d/m/b/b/c;->agreementDescription:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/m/b/b/c;->paymentMethods:Ljava/util/List;

    .line 11
    new-instance v10, Lc/c/a/e/d/m/b/b/b;

    invoke-direct {v10}, Lc/c/a/e/d/m/b/b/b;-><init>()V

    invoke-static {v0, v10}, Lh/a/u;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 14
    check-cast v11, Lc/c/a/e/d/m/b/b/m;

    .line 15
    invoke-virtual {v11}, Lc/c/a/e/d/m/b/b/m;->b()Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    new-instance v11, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/e/d/m/b/b/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/e/d/m/b/b/c;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->paymentData:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->paymentData:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->sign:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->sign:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lc/c/a/e/d/m/b/b/c;->credit:J

    iget-wide v5, p1, Lc/c/a/e/d/m/b/b/c;->credit:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->productName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->productName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->dealerName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->dealerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->dealerIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->dealerIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->kind:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->kind:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->creditString:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->creditString:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->agreementDescription:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/c;->agreementDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->paymentMethods:Ljava/util/List;

    iget-object p1, p1, Lc/c/a/e/d/m/b/b/c;->paymentMethods:Ljava/util/List;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lc/c/a/e/d/m/b/b/c;->paymentData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->sign:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lc/c/a/e/d/m/b/b/c;->credit:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->productName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->dealerName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->dealerIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->kind:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->creditString:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->agreementDescription:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/c;->paymentMethods:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuyProductMethodsResponseDto(paymentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->paymentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", credit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/e/d/m/b/b/c;->credit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dealerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->dealerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dealerIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->dealerIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creditString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->creditString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", agreementDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->agreementDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/c;->paymentMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
