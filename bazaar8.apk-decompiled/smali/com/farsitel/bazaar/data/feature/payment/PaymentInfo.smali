.class public final Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;
.super Lcom/farsitel/bazaar/data/feature/payment/PaymentData;
.source "PaymentEntities.kt"


# instance fields
.field public final agreementDescription:Ljava/lang/String;

.field public final credit:Ljava/lang/Long;

.field public final creditString:Ljava/lang/String;

.field public final dealerIconUrl:Ljava/lang/String;

.field public final dealerName:Ljava/lang/String;

.field public final kind:Ljava/lang/String;

.field public final paymentData:Ljava/lang/String;

.field public final paymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;"
        }
    .end annotation
.end field

.field public final productName:Ljava/lang/String;

.field public final sign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/feature/payment/PaymentData;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->credit:Ljava/lang/Long;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->creditString:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->productName:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->kind:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerName:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerIconUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->agreementDescription:Ljava/lang/String;

    iput-object p10, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentMethods:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/c/a/e/d/m/f;
    .locals 14

    const-string v0, "userId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 3
    sget-object v0, Lc/c/a/e/d/m/c;->a:Lc/c/a/e/d/m/c$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/c/a/e/d/m/c$a;->a(Ljava/lang/String;)Lc/c/a/e/d/m/c;

    move-result-object v0

    .line 4
    new-instance v13, Lc/c/a/e/d/m/f;

    .line 5
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->e()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->c()J

    move-result-wide v5

    .line 8
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->a()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->b()Ljava/lang/String;

    move-result-object v8

    .line 10
    iget-object v10, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    .line 11
    iget-object v11, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v9, ""

    move-object v1, v13

    move-object v3, p1

    .line 12
    invoke-direct/range {v1 .. v12}, Lc/c/a/e/d/m/f;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "trying to cast not bought product to purchaseEntity"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->agreementDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->credit:Ljava/lang/Long;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->creditString:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->credit:Ljava/lang/Long;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->credit:Ljava/lang/Long;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->creditString:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->creditString:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->productName:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->productName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->kind:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->kind:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerName:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerIconUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerIconUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->agreementDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->agreementDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentMethods:Ljava/util/List;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentMethods:Ljava/util/List;

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

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->credit:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->creditString:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->productName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->kind:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->agreementDescription:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentMethods:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentInfo(paymentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", credit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->credit:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creditString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->creditString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dealerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dealerIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->dealerIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", agreementDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->agreementDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->paymentMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
