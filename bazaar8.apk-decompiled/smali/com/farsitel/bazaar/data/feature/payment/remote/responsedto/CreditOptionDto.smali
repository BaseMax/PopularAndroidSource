.class public final Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/CreditOptionDto;
.super Ljava/lang/Object;
.source "GetCreditOptionDto.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final amount:J
    .annotation runtime Lc/e/d/a/c;
        value = "amount"
    .end annotation
.end field

.field public final label:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "label"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/feature/payment/CreditOption;
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/CreditOptionDto;->label:Ljava/lang/String;

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/CreditOptionDto;->amount:J

    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
