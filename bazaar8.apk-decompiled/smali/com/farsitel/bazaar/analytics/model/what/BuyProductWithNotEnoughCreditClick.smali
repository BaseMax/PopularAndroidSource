.class public final Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithNotEnoughCreditClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;
.source "ButtonClick.kt"


# instance fields
.field public final price:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buy_product_with_not_enough_credit"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-wide p1, p0, Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithNotEnoughCreditClick;->price:J

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

    .line 1
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithNotEnoughCreditClick;->price:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "price"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
