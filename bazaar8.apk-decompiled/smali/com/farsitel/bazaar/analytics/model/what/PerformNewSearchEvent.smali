.class public final Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;
.super Lcom/farsitel/bazaar/analytics/model/what/ReferrerNeededEvent;
.source "OtherEvent.kt"


# instance fields
.field public final name:Ljava/lang/String;

.field public final newQuery:Ljava/lang/String;

.field public final searchToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchToken"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Lcom/farsitel/bazaar/analytics/model/what/ReferrerNeededEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;->newQuery:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;->searchToken:Ljava/lang/String;

    const-string p1, "search"

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;->name:Ljava/lang/String;

    return-object v0
.end method

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
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ReferrerNeededEvent;->c()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lkotlin/Pair;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;->newQuery:Ljava/lang/String;

    const-string v3, "new_query"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/PerformNewSearchEvent;->searchToken:Ljava/lang/String;

    const-string v3, "search_token"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-static {v1}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
