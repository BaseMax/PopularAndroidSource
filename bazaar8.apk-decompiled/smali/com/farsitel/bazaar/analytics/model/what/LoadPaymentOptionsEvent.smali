.class public final Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;
.super Lcom/farsitel/bazaar/analytics/model/what/LoadEvent;
.source "LoadEvent.kt"


# instance fields
.field public final credit:J

.field public final optionsCount:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 3

    .line 1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payment_options"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/LoadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput p1, p0, Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;->optionsCount:I

    iput-wide p2, p0, Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;->credit:J

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 4
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
    invoke-virtual {p0}, Lcom/farsitel/bazaar/analytics/model/what/LoadEvent;->c()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lkotlin/Pair;

    .line 3
    iget v2, p0, Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;->optionsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "options_count"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    iget-wide v2, p0, Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;->credit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "credit"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-static {v1}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
