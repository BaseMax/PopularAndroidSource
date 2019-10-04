.class public final Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;
.source "OtherScreens.kt"


# instance fields
.field public final isInitiatedForPurchasingProduct:Z

.field public final minimumNeededCredit:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    const-string v0, "credit_options"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    iput-wide p1, p0, Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;->minimumNeededCredit:J

    iput-boolean p3, p0, Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;->isInitiatedForPurchasingProduct:Z

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

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    iget-wide v1, p0, Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;->minimumNeededCredit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "minimum_needed_credit"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-boolean v1, p0, Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;->isInitiatedForPurchasingProduct:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_initiated_for_purchasing_product"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
