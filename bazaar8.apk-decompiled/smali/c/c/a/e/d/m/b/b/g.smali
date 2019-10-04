.class public final Lc/c/a/e/d/m/b/b/g;
.super Ljava/lang/Object;
.source "GetCreditOptionDto.kt"


# instance fields
.field public final options:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "options"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/CreditOptionDto;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/CreditOptionDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/b/b/g;->options:Ljava/util/List;

    return-object v0
.end method
